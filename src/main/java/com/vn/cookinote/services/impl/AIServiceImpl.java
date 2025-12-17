package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.RecipeDto4;
import com.vn.cookinote.dtos.RecipeDto5;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.repositories.RecipeRepository;
import com.vn.cookinote.services.AIService;
import lombok.RequiredArgsConstructor;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AIServiceImpl implements AIService {
    private final ChatClient chatClient;
    private final RecipeRepository recipeRepository;

    @Override
    public List<MealPlanDto> generateMealPlan(String message) {

        Pageable sortedByCreatedAt = PageRequest.of(
                0,
                100,
                Sort.by(Sort.Direction.DESC, "createdAt")
        );

        List<Recipe> recipeList = recipeRepository.findByIsDeletedAndIsPublic(false, true, sortedByCreatedAt).stream().toList();
        List<RecipeDto4> recipeDto4s = RecipeDto4.fromEntities(recipeList);

        String recipeJson;
        try {
            recipeJson = new com.fasterxml.jackson.databind.ObjectMapper().writeValueAsString(recipeDto4s);
        } catch (com.fasterxml.jackson.core.JsonProcessingException e) {
            recipeJson = recipeDto4s.toString();
        }

        SystemMessage systemMessage = new SystemMessage("""
            You are an assistant that creates detailed weekly meal plans using the provided list of recipes.
            
            Today's date is %s.
            
            You are given a list of available recipes in JSON format. Each recipe has fields such as id, title, description, etc.
            
            Your task:
            - Generate a full 7-day meal plan (from the current date for 7 consecutive days).
            - Each day should include 2 or 3 meals (e.g., BREAKFAST, LUNCH, DINNER) depending on what fits the user's request.
            - Only use recipes from the provided list.
            - Choose recipes that match the user's message (for example, vegetarian dishes if the message mentions "món chay").
            - Do not invent new recipes outside the provided list.
            - Return a JSON array of MealPlanDto objects.
            - Each MealPlanDto must have:
                - "id": incremental integer starting from 1
                - "recipe": an object with { "id", "title", "description" }
                - "mealDate": date in "yyyy-MM-dd" format (based on the 7-day plan)
                - "mealType": one of ["BREAKFAST", "LUNCH", "DINNER"]
            
            Available recipes (JSON): %s
            """.formatted(LocalDate.now(), recipeJson));

        UserMessage userMessage = new UserMessage(message);

        Prompt prompt = new Prompt(systemMessage, userMessage);

        return chatClient.prompt(prompt).call().entity(new ParameterizedTypeReference<List<MealPlanDto>>() {
        });
    }

    @Override
    public RecipeDto5 generateRecipe(String message) {
        SystemMessage systemMessage = new SystemMessage("""
        You are an AI specialized in generating cooking recipe data.
        
        Your task:
        - Analyze the user's request
        - Generate ONE valid cooking recipe
        
        MANDATORY RULES:
        1. Return ONLY valid JSON
        2. The JSON must EXACTLY match the structure of RecipeDto5
        3. Do NOT include explanations, markdown, or extra text
        4. Do NOT add fields outside the defined structure
        5. Do NOT return null values
        
        DIFFICULTY ENUM RULES:
        - EASY: Simple steps, minimal techniques, suitable for beginners
        - MEDIUM: Requires basic cooking skills and time management
        - HARD: Multiple steps, requires cooking experience
        - VERY_HARD: Complex techniques, requires advanced skills
        
        DATA REQUIREMENTS:
        - title: short, accurate dish name
        - description: 1–2 concise sentences
        - cookTimeMinutes: reasonable total cooking time
        - servings: integer greater than 0
        - difficulty: ONLY one of EASY | MEDIUM | HARD | VERY_HARD
        - steps: at least one step, stepOrder must be incremental
        - ingredients: no duplicate ingredient names
        
        LANGUAGE:
        - All text must be written in Vietnamese
        """);

        UserMessage userMessage = new UserMessage(message);
        Prompt prompt = new Prompt(systemMessage, userMessage);
        return chatClient.prompt(prompt).call().entity(RecipeDto5.class);
    }

    @Override
    public String generateRecipeFromContent(String content) {
        String systemInstruction = """
            You are a professional chef assistant.
            Your task is to analyze the unstructured food/recipe text provided by the user and convert it into a structured JSON object.
            
            The JSON object must strictly follow this structure:
            {
                "title": "Name of the dish (generate a catchy one if missing)",
                "description": "Short, appetizing description",
                "cookTimeMinutes": Integer (estimate if missing, e.g., 30),
                "servings": Integer (estimate if missing, e.g., 2),
                "difficulty": "One of [EASY, MEDIUM, HARD] (estimate based on complexity)",
                "ingredients": [
                    { 
                        "name": "Ingredient name", 
                        "quantity": "Numeric value as string (e.g. '500', '1/2')", 
                        "unit": "Unit (e.g. 'g', 'kg', 'tsp', 'tbsp')", 
                        "note": "Preparation note (e.g. 'chopped', 'sliced') or empty string",
                        "required": true
                    }
                ],
                "steps": [
                    { "stepOrder": 1, "description": "Description of step 1" },
                    { "stepOrder": 2, "description": "Description of step 2" }
                ]
            }

            IMPORTANT RULES:
            1. Return ONLY the raw JSON string. Do not include markdown formatting (like ```json ... ```).
            2. If the input is not related to food, return a JSON with empty fields but do not throw error.
            3. If the input contains MULTIPLE recipes, ONLY extract the FIRST recipe found in the text. Ignore the rest.
            4. Ingredients: no duplicate ingredient names
            5. Translate content to Vietnamese if the input is in Vietnamese.
        """;
        UserMessage userMessage = new UserMessage(content);
        Prompt prompt = new Prompt(new SystemMessage(systemInstruction), userMessage);
        String response = chatClient.prompt(prompt).call().content();

        // Làm sạch chuỗi JSON nếu AI lỡ trả về markdown block
        if (response.startsWith("```json")) {
            response = response.substring(7);
        }
        if (response.startsWith("```")) {
            response = response.substring(3);
        }
        if (response.endsWith("```")) {
            response = response.substring(0, response.length() - 3);
        }
        return response.trim();
    }
}
