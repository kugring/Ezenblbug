package com.zenblbug.ezen.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface FileService {

    String upload(MultipartFile file);
    // 스프링 코어 io의 리소스 라이브러리를 가져온다.
    Resource getImage(String fileName);
}
