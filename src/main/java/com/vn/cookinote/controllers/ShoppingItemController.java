package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.ShoppingItemDto;
import com.vn.cookinote.dtos.ShoppingItemDto1;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.ShoppingItem;
import com.vn.cookinote.services.ShoppingItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/shopping-items")
@RequiredArgsConstructor
public class ShoppingItemController {

    private final ShoppingItemService shoppingItemService;

    @PatchMapping
    public ResponseEntity<ApiResponse<Object>> patchShoppingItem(@RequestBody ShoppingItemDto1 shoppingItemDto) {
        ShoppingItem shoppingItem = shoppingItemService.updateShoppingItem(shoppingItemDto);
        if (shoppingItem == null) {
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, ApiStatus.BAD_REQUEST.getMessage());
        }
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Cập nhật mục mua sắm thành công");
    }

}
