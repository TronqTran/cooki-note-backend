package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.ShoppingListDto;
import com.vn.cookinote.dtos.ShoppingListDto1;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.ShoppingList;
import com.vn.cookinote.services.ShoppingListService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping("/api/v1/shopping-list")
@RequiredArgsConstructor
public class ShoppingListController {
    private final ShoppingListService shoppingListService;

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<Object>> getMyShoppingLists(@AuthenticationPrincipal Jwt jwt,
                                                                  @PageableDefault(size = 20, sort = {"createdAt"}, direction = org.springframework.data.domain.Sort.Direction.DESC)
                                                                  Pageable pageable) {
        String email = jwt.getSubject();

        Page<ShoppingList> shoppingLists = shoppingListService.findMyShoppingLists(email, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), ShoppingListDto1.fromEntities(shoppingLists.getContent()));
    }

    @PostMapping
    public ResponseEntity<ApiResponse<Object>> addToShoppingList(@AuthenticationPrincipal Jwt jwt,
                                                                 @RequestBody ShoppingListDto shoppingListDto) {
        String email = jwt.getSubject();

        ShoppingList fromRecipe = shoppingListService.createFromRecipe(email, shoppingListDto.recipeId(), shoppingListDto.plannedDate() != null ? shoppingListDto.plannedDate() : LocalDate.now());
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, ApiStatus.CREATED.getMessage(), ShoppingListDto1.fromEntity(fromRecipe));
    }

}
