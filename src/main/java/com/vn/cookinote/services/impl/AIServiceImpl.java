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
}
