package com.company.nio;

import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * @author zy
 * @date 2018-02-09 22:08
 */
public class MyPath {
    public static void main(String[] args) {
        String mypath = "../src/com/company/nio/MyPath.java";
        Path path = Paths.get(mypath);
        System.out.println(path.getFileName());

        Path path1 = path.toAbsolutePath();
        System.out.println(path1);

        Path path2 = path.normalize();
        System.out.println(path2);
    }
}
