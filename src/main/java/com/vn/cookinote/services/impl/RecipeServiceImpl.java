package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.RecipeMediaDto;
import com.vn.cookinote.dtos.StepDto;
import com.vn.cookinote.enums.MediaType;
import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.*;
import com.vn.cookinote.models.keys.RecipeIngredientKey;
import com.vn.cookinote.models.keys.RecipeMediaKey;
import com.vn.cookinote.models.keys.StepMediaKey;
import com.vn.cookinote.repositories.*;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {
    private final CategoryRepository categoryRepository;
    private final MediaRepository mediaRepository;
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final IngredientRepository ingredientRepository;

    @Override
    public Recipe createRecipe(RecipeDto recipeDto, String email) {

        // Log recipe creation
        log.info("Creating recipe: {}", recipeDto.title());

        // Find the user by email
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("User not found with email: " + email));

        // Find or create a category
        Category category;
        if (recipeDto.category().id() != null) {
            category = categoryRepository.findById(recipeDto.category().id())
                    .orElseGet(() -> categoryRepository.findByName(recipeDto.category().name())
                            .orElseGet(() -> {
                                // Create a new category if not found
                                Category newCategory = new Category();
                                newCategory.setName(recipeDto.category().name());
                                newCategory.setDescription(recipeDto.category().description());
                                newCategory.setIsDeleted(false);
                                newCategory.setIsActive(true);
                                return categoryRepository.save(newCategory);
                            }));
        } else {
            category = categoryRepository.findByName(recipeDto.category().name())
                    .orElseGet(() -> {
                        // Create a new category if not found
                        Category newCategory = new Category();
                        newCategory.setName(recipeDto.category().name());
                        newCategory.setDescription(recipeDto.category().description());
                        newCategory.setIsDeleted(false);
                        newCategory.setIsActive(true);
                        return categoryRepository.save(newCategory);
                    });
        }

        // Build recipe object
        Recipe recipe = Recipe.builder()
                .title(recipeDto.title())
                .description(recipeDto.description())
                .category(category)
                .cookTimeMinutes(recipeDto.cookTimeMinutes())
                .difficulty(recipeDto.difficulty())
                .servings(recipeDto.servings())
                .user(user)
                .isDeleted(false)
                .isPublic(true)
                .viewsCount(0L)
                .likesCount(0L)
                .build();

        // Add medias to a recipe
        if (recipeDto.medias() != null && !recipeDto.medias().isEmpty()) {
            List<RecipeMedia> recipeMedias = new ArrayList<>();
            for (RecipeMediaDto recipeMediaDto : recipeDto.medias()) {
                // Find or create media
                Media media = mediaRepository.findByPublicId(recipeMediaDto.media().publicId())
                        .orElseGet(() -> {
                            Media newMedia = Media.builder()
                                    .url(recipeMediaDto.media().url())
                                    .publicId(recipeMediaDto.media().publicId())
                                    .type(MediaType.IMAGE)
                                    .build();
                            return mediaRepository.save(newMedia);
                        });

                // Build RecipeMedia object
                RecipeMedia recipeMedia = RecipeMedia.builder()
                        .id(new RecipeMediaKey(recipe.getId(), media.getId()))
                        .media(media)
                        .recipe(recipe)
                        .type(ProfileMediaType.AVATAR)
                        .build();

                recipeMedias.add(recipeMedia);
            }
            recipe.setMedias(recipeMedias);
        }

        // Add steps to a recipe
        if (recipeDto.steps() != null && !recipeDto.steps().isEmpty()) {
            List<Step> steps = new ArrayList<>();
            for (StepDto stepDto : recipeDto.steps()) {
                // Build Step object
                Step step = Step.builder()
                        .stepOrder(stepDto.stepOrder())
                        .description(stepDto.description())
                        .estimatedTimeMinutes(stepDto.estimatedTimeMinutes())
                        .recipe(recipe)
                        .isDeleted(false)
                        .build();
                steps.add(step);

                // Add media to step
                List<StepMedia> stepMedias = new ArrayList<>();
                if (stepDto.medias() != null && !stepDto.medias().isEmpty()) {
                    for (var stepMediaDto : stepDto.medias()) {
                        // Find or create media for a step
                        Media media = mediaRepository.findByPublicId(stepMediaDto.media().publicId())
                                .orElseGet(() -> {
                                    Media newMedia = Media.builder()
                                            .url(stepMediaDto.media().url())
                                            .publicId(stepMediaDto.media().publicId())
                                            .type(MediaType.IMAGE)
                                            .build();
                                    return mediaRepository.save(newMedia);
                                });

                        // Build StepMedia object
                        StepMedia stepMedia = StepMedia.builder()
                                .id(new StepMediaKey(step.getId(), media.getId()))
                                .media(media)
                                .step(step)
                                .build();

                        stepMedias.add(stepMedia);
                    }
                    step.setMedias(stepMedias);
                }
            }
            recipe.setSteps(steps);
        }

        // Add ingredients to a recipe
        if (recipeDto.ingredients() != null && !recipeDto.ingredients().isEmpty()) {
            List<RecipeIngredient> recipeIngredients = new ArrayList<>();
            for (var ingredientDto : recipeDto.ingredients()) {
                Ingredient ingredient;
                // Find or create ingredient
                if (ingredientDto.ingredient().id() != null) {
                    ingredient = ingredientRepository.findById(ingredientDto.ingredient().id())
                            .orElseGet(() -> ingredientRepository.findByName(ingredientDto.ingredient().name())
                                    .orElseGet(() -> {
                                        Ingredient newIngredient = new Ingredient();
                                        newIngredient.setName(ingredientDto.ingredient().name());
                                        newIngredient.setDescription(ingredientDto.ingredient().description());
                                        newIngredient.setIsDeleted(false);
                                        return ingredientRepository.save(newIngredient);
                                    }));
                } else {
                    ingredient = ingredientRepository.findByName(ingredientDto.ingredient().name())
                            .orElseGet(() -> {
                                Ingredient newIngredient = new Ingredient();
                                newIngredient.setName(ingredientDto.ingredient().name());
                                newIngredient.setDescription(ingredientDto.ingredient().description());
                                newIngredient.setIsDeleted(false);
                                return ingredientRepository.save(newIngredient);
                            });
                }

                // Build RecipeIngredient object
                RecipeIngredient recipeIngredient = RecipeIngredient.builder()
                        .id(new RecipeIngredientKey(recipe.getId(), ingredient.getId()))
                        .recipe(recipe)
                        .ingredient(ingredient)
                        .quantity(ingredientDto.quantity())
                        .unit(ingredientDto.unit())
                        .required(ingredientDto.required())
                        .note(ingredientDto.note())
                        .isDeleted(false)
                        .build();
                recipeIngredients.add(recipeIngredient);
            }
            recipe.setIngredients(recipeIngredients);
        }

        // Save and return recipe
        return recipeRepository.save(recipe);
    }
}
