package com.zenblbug.ezen.service.implement;

import java.io.File;
import java.util.UUID;

import com.zenblbug.ezen.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

@Service
public class FileServiceImplement implements FileService {


    @Autowired
    private ServletContext servletContext;

    private String filePath;
    private final String fileUrl = "/file/";

    @PostConstruct
    public void init() {
        filePath = servletContext.getRealPath("/uploads/images/");
    }

    @Override
    public String upload(MultipartFile file) {

        // 파일이 비어있으면 리턴
        if (file.isEmpty())
            return null;

        String originalFileName = file.getOriginalFilename();
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString();
        String saveFileName = uuid + extension;
        // 경로 구분자 추가
        String savePath = filePath + saveFileName;
        System.out.println("savePath: " +savePath);
        try {
            // 해당 경로로 파일이 저장됨
            file.transferTo(new File(savePath));
        } catch (Exception exception) {

            System.out.println("fileservice catch");
            exception.printStackTrace();
            return null;
        }

        String url = fileUrl + saveFileName;
        System.out.println("url: : " +url);

        return url;
    }

    @Override
    public Resource getImage(String fileName) {

        Resource resource = null;

        try {
            // 스프링의 urlRessource이다!
            resource = new UrlResource("file:" + filePath + fileName);
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
        return resource;
    }

}
