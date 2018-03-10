package com.company.io.inputstream;

import com.company.io.FileUrl;

import java.io.*;

/**
 * @author zy
 * @date 2018-02-07 15:12
 */
public class MySequenceInputstream {
    public static void main(String[] args) throws IOException {
        InputStream Ainput = new FileInputStream(FileUrl.URLA);
        InputStream Binput = new FileInputStream(FileUrl.URLB);

        SequenceInputStream inputStream = new SequenceInputStream(Ainput, Binput);
        int buffer;
        while ((buffer = inputStream.read()) != -1) {
            System.out.print((char)buffer);
        }

//        SequenceInputStream inputStream1 = new SequenceInputStream()
    }
}
