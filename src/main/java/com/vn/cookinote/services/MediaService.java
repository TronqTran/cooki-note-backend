package com.vn.cookinote.services;


import com.vn.cookinote.models.Media;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface MediaService {
    Media uploadUserAvatar(MultipartFile file) throws IOException;
    Media uploadRecipeAvatar(MultipartFile file) throws IOException;
    Media uploadStepImage(MultipartFile file) throws IOException;
    Iterable<Media> findAll();
}
