package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.MediaDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.services.MediaService;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.BadRequestException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Set;

@RestController
@RequestMapping("api/v1/media")
@RequiredArgsConstructor
public class MediaController {
    private final MediaService mediaService;

    private static final long MAX_FILE_SIZE = 5 * 1024 * 1024; // 5MB

    private static final Set<String> ALLOWED_CONTENT_TYPES = Set.of(
            "image/jpeg",
            "image/png",
            "image/webp"
    );

    @PostMapping("/recipe-avatar")
    public ResponseEntity<ApiResponse<MediaDto>> uploadRecipeAvatar(@RequestParam("file") MultipartFile file) throws IOException {
        validateImageFile(file);
        Media media = mediaService.uploadRecipeAvatar(file);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Upload image thành công", MediaDto.fromEntity(media));
    }

    @PostMapping("/step-image")
    public ResponseEntity<ApiResponse<MediaDto>> uploadStepImage(@RequestParam("file") MultipartFile file) throws IOException {
        validateImageFile(file);
        Media media = mediaService.uploadStepImage(file);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Upload image thành công", MediaDto.fromEntity(media));
    }

    @GetMapping
    public ResponseEntity<ApiResponse<Iterable<MediaDto>>> getAllMedia() {
        Iterable<Media> media = mediaService.findAll();
        Iterable<MediaDto> mediaDTOS = MediaDto.fromEntities(media);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy danh sách media thành công", mediaDTOS);
    }

    private void validateImageFile(MultipartFile file) throws BadRequestException {

        if (file == null || file.isEmpty()) {
            throw new BadRequestException("File không được để trống");
        }

        if (file.getSize() > MAX_FILE_SIZE) {
            throw new BadRequestException("Kích thước ảnh tối đa 5MB");
        }

        if (!ALLOWED_CONTENT_TYPES.contains(file.getContentType())) {
            throw new BadRequestException("Chỉ cho phép file ảnh (JPG, PNG, WEBP)");
        }
    }
}
