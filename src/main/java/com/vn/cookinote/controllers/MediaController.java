package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.MediaDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.services.MediaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("api/v1/media")
@RequiredArgsConstructor
public class MediaController {
    private final MediaService mediaService;

    @PostMapping("/recipe-avatar")
    public ResponseEntity<ApiResponse<MediaDto>> uploadRecipeAvatar(@RequestParam("file") MultipartFile file) throws IOException {
        Media media = mediaService.uploadRecipeAvatar(file);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Upload image thành công", MediaDto.fromEntity(media));
    }

    @PostMapping("/step-image")
    public ResponseEntity<ApiResponse<MediaDto>> uploadStepImage(@RequestParam("file") MultipartFile file) throws IOException {
        Media media = mediaService.uploadStepImage(file);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Upload image thành công", MediaDto.fromEntity(media));
    }

    @GetMapping
    public ResponseEntity<ApiResponse<Iterable<MediaDto>>> getAllMedia() {
        Iterable<Media> media = mediaService.findAll();
        Iterable<MediaDto> mediaDTOS = MediaDto.fromEntities(media);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy danh sách media thành công", mediaDTOS);
    }
}
