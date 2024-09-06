package com.zenblbug.ezen.controller;

import com.zenblbug.ezen.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;



@RestController
@RequestMapping("/file")
public class FileController {

    @Autowired
    private FileService fileService;

    @PostMapping("/upload")
    public String upload(
            @RequestParam("file") MultipartFile file
    ){
        String url = fileService.upload(file);
        return url;
    }

    // 반환할 파일의 형태에 대해서 정의
    @GetMapping(value="{fileName:.+}", produces={MediaType.IMAGE_JPEG_VALUE, MediaType.IMAGE_PNG_VALUE})
    public Resource getImage(
            @PathVariable("fileName") String fileName
    ) {
        System.out.println(fileName); // 파일 이름 및 확장자
        Resource resource = fileService.getImage(fileName); // 파일 이름으로 리소스 찾기
        System.out.println(resource); // 리소스 정보
        return resource;
    }

}
