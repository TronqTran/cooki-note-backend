package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.StepDto;
import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.*;
import com.vn.cookinote.models.keys.RecipeIngredientKey;
import com.vn.cookinote.models.keys.RecipeMediaKey;
import com.vn.cookinote.models.keys.StepMediaKey;
import com.vn.cookinote.repositories.*;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
    private final RecipeLikeRepository recipeLikeRepository;

    @Override
    public Recipe createRecipe(RecipeDto recipeDto, String email) {

        // Log recipe creation
        log.info("Creating recipe: {}", recipeDto.title());

        // Build recipe object
        Recipe recipe = Recipe.builder()
                .title(recipeDto.title())
                .description(recipeDto.description())
                .cookTimeMinutes(recipeDto.cookTimeMinutes())
                .difficulty(recipeDto.difficulty())
                .servings(recipeDto.servings())
                .isDeleted(false)
                .isPublic(true)
                .viewsCount(0L)
                .build();

        // Find the user by email
        userRepository.findByEmail(email).ifPresent(recipe::setUser);

        // Find a category
        if (recipeDto.category() != null && recipeDto.category().id() != null)
            categoryRepository.findById(recipeDto.category().id()).ifPresent(recipe::setCategory);

        // Add medias to a recipe
        if (recipeDto.medias() != null && !recipeDto.medias().isEmpty()) {
            List<RecipeMedia> recipeMedias = recipeDto.medias().stream()
                .map(recipeMediaDto -> mediaRepository.findById(recipeMediaDto.media().id())
                    .map(media -> RecipeMedia.builder()
                            .id(new RecipeMediaKey(recipe.getId(), media.getId()))
                            .media(media)
                            .recipe(recipe)
                            .type(ProfileMediaType.AVATAR)
                            .build())
                    .orElse(null))
                .filter(java.util.Objects::nonNull)
                .toList();
            recipe.setMedias(recipeMedias);
        }

        // Add steps to a recipe
        if (recipeDto.steps() != null && !recipeDto.steps().isEmpty()) {
            List<Step> steps = new ArrayList<>();
            for (StepDto stepDto : recipeDto.steps()) {
                Step step = Step.builder()
                        .stepOrder(stepDto.stepOrder())
                        .description(stepDto.description())
                        .estimatedTimeMinutes(stepDto.estimatedTimeMinutes())
                        .recipe(recipe)
                        .isDeleted(false)
                        .build();
                // Add media to step
                if (stepDto.medias() != null && !stepDto.medias().isEmpty()) {
                    List<StepMedia> stepMedias = stepDto.medias().stream()
                            .map(stepMediaDto -> mediaRepository.findById(stepMediaDto.media().id())
                                    .map(media -> StepMedia.builder()
                                            .id(new StepMediaKey(step.getId(), media.getId()))
                                            .media(media)
                                            .step(step)
                                            .build())
                                    .orElse(null))
                            .filter(java.util.Objects::nonNull)
                            .toList();
                    step.setMedias(stepMedias);
                }
                steps.add(step);
            }
            recipe.setSteps(steps);
        }

        // Add ingredients to a recipe
        if (recipeDto.ingredients() != null && !recipeDto.ingredients().isEmpty()) {
            List<RecipeIngredient> recipeIngredients = recipeDto.ingredients().stream()
                .map(ingredientDto -> {
                    Ingredient ingredient = ingredientRepository.findByName(ingredientDto.ingredient().name())
                            .orElseGet(() -> {
                                Ingredient newIngredient = new Ingredient();
                                newIngredient.setName(ingredientDto.ingredient().name());
                                return ingredientRepository.save(newIngredient);
                            });

                    return RecipeIngredient.builder()
                            .id(new RecipeIngredientKey(recipe.getId(), ingredient.getId()))
                            .recipe(recipe)
                            .ingredient(ingredient)
                            .quantity(ingredientDto.quantity())
                            .unit(ingredientDto.unit())
                            .required(ingredientDto.required())
                            .note(ingredientDto.note())
                            .build();
                })
                .toList();
            recipe.setIngredients(recipeIngredients);
        }

        // Save and return recipe
        return recipeRepository.save(recipe);
    }

    @Override
    public Recipe findRecipeById(Long id) {
        log.info("Finding recipe by id: {}", id);
        Recipe recipe = recipeRepository.findByIsDeletedAndIsPublicAndId(false, true, id).orElse(null);
        if (recipe == null) return null;
        recipe.setViewsCount(recipe.getViewsCount() + 1);
        recipeRepository.save(recipe);
        recipe.setComments(
                recipe.getComments().stream()
                        .filter(comment -> comment.getIsDeleted() == null || !comment.getIsDeleted())
                        .toList()
        );
        return recipe;
    }

    @Override
    public Page<Recipe> findAllRecipes(Pageable pageable) {
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        return recipeRepository.findByIsDeletedAndIsPublic(false, true, sortedByCreatedAt);
    }

    @Override
    public Page<Recipe> searchRecipes(String keyword, Pageable pageable) {
        log.info("Searching recipes by keyword: {}", keyword);
        return recipeRepository.fullTextSearch(keyword, pageable);
    }

    @Override
    public Page<Recipe> findLikedRecipes(String email, Pageable pageable) {
        log.info("Finding liked recipes by email: {}", email);
        Page<Recipe> recipes = Page.empty();
        User user = userRepository.findByEmail(email).orElse(null);
        assert user != null;
        List<RecipeLike> likeList = recipeLikeRepository.findByUserId(user.getId());
        if (likeList.isEmpty()) return recipes;

        List<Long> recipeIds = likeList.stream().map(RecipeLike::getRecipe).map(Recipe::getId).toList();

        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        recipes = recipeRepository.findByIsDeletedAndIsPublicAndIdIn(false, true, recipeIds, sortedByCreatedAt);
        return recipes;
    }

    @Override
    public boolean deleteRecipe(Long id, String email) {
        log.info("Deleting recipe by id: {} and email: {}", id, email);
        User user = userRepository.findByEmail(email).orElse(null);
        Recipe recipe = recipeRepository.findById(id).orElse(null);
        assert user != null;
        assert recipe != null;
        if (!user.equals(recipe.getUser()))
            return false;
        recipe.setIsDeleted(true);
        recipeRepository.save(recipe);
        return true;
    }

    @Override
    public Page<Recipe> findMyRecipes(String email, Pageable pageable) {
        log.info("Finding my recipes by email: {}", email);
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        User user = userRepository.findByEmail(email).orElse(null);
        assert user != null;
        return recipeRepository.findByIsDeletedAndUser(false, user, sortedByCreatedAt);
    }

    @Override
    public Page<Recipe> findRecipesByCategory(Long id, Pageable pageable) {
        log.info("Finding recipes by category id: {}", id);
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        return recipeRepository.findByIsDeletedAndIsPublicAndCategoryId(false, true, id, sortedByCreatedAt);
    }

    @Override
    public Page<Recipe> findRecipesByUserId(Long id, Pageable pageable) {
        log.info("Finding recipes by user id: {}", id);
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        return recipeRepository.findByIsDeletedAndIsPublicAndUserId(false, true, id, sortedByCreatedAt);
    }
}
