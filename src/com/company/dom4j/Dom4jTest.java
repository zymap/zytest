package com.company.dom4j;


import java.io.*;

/**
 * created by zy on 17-9-21 .
 */
public class Dom4jTest {
    public static void main(String[] args) throws IOException {
        System.out.println(args[0]);
        String lujing = "./src/com/company/dom4j/";
        File file = new File(lujing+"config.xml");
        InputStream outputStream = new FileInputStream(file);
        InputStreamReader reader = new InputStreamReader(outputStream);
        BufferedReader reader1 = new BufferedReader(reader);
        System.out.println(reader1.readLine());
    }
}
