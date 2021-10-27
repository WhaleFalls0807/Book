package com.lyz.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-10-06  17:25
 */
public class FileUtils {

    public static String uploadFile(MultipartFile file){

        String fileName = file.getOriginalFilename();

        String cover = "/img/product/" + fileName;
        String filePath = "D:\\WorkSpace\\Workspace-idea1\\Book\\src\\main\\webapp\\img\\product\\" + fileName;

        File file1 = new File(filePath);
        if (!file1.exists()){
            file1.mkdirs();
        }

        try {
            file.transferTo(file1);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return cover;
    }
}
