package com.vn.cookinote.services.impl;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.vn.cookinote.enums.MediaType;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.repositories.MediaRepository;
import com.vn.cookinote.services.MediaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
@Slf4j
@Service
@RequiredArgsConstructor
public class MediaServiceImpl implements MediaService {

    private final Cloudinary cloudinary;
    private final MediaRepository mediaRepository;

    @Override
    public Media uploadUserAvatar(MultipartFile file) throws IOException {
        log.info("Upload user avatar");
        var uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.asMap(
                "folder", "profile-avatar",
                "resource_type", "image",
                "overwrite", true

        ));

        String publicId = (String) uploadResult.get("public_id");
        String url = (String) uploadResult.get("secure_url");

        Media media = Media.builder()
                .url(url)
                .publicId(publicId)
                .type(MediaType.IMAGE)
                .build();

        return mediaRepository.save(media);
    }

    @Override
    public Media uploadRecipeAvatar(MultipartFile file) throws IOException {
        log.info("Upload recipe avatar");
        var uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.asMap(
                "folder", "cooki-note/recipes",
                "resource_type", "image",
                "overwrite", true

        ));

        String publicId = (String) uploadResult.get("public_id");
        String url = (String) uploadResult.get("secure_url");

        Media media = Media.builder()
                .url(url)
                .publicId(publicId)
                .type(com.vn.cookinote.enums.MediaType.IMAGE)
                .build();
        return mediaRepository.save(media);
    }

    @Override
    public Media uploadStepImage(MultipartFile file) throws IOException {
        log.info("Upload step image");
        var uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.asMap(
                "folder", "cooki-note/steps",
                "resource_type", "image",
                "overwrite", true

        ));

        String publicId = (String) uploadResult.get("public_id");
        String url = (String) uploadResult.get("secure_url");

        Media media = Media.builder()
                .url(url)
                .publicId(publicId)
                .type(com.vn.cookinote.enums.MediaType.IMAGE)
                .build();
        return mediaRepository.save(media);
    }

    @Override
    public Iterable<Media> findAll() {
        return mediaRepository.findAll();
    }
}
