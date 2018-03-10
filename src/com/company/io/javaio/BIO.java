package com.company.io.javaio;

import com.company.io.FileUrl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * @author zy
 * @date 2018-02-06 18:16
 */
public class BIO {
    public static void main(String[] args) throws IOException {
        File file = new File(FileUrl.GatherScatter);
        file.createNewFile();
//        FileInputStream inputStream = new FileInputStream(file);
//        byte[] bytes = new byte[inputStream.available()];
//        inputStream.read(bytes);
//        System.out.println(new String(bytes));
    }
}
