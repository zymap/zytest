package com.company.io.reader;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;

/**
 * @author zy
 * @date 2018-02-07 14:52
 */
public class MyStringReader {
    public static void main(String[] args) throws IOException {
        String text = "this is my StringReader test";
        StringReader reader = new StringReader(text);


        char c = (char) reader.read();
        System.out.println(c);

        char buffer[] = new char[5];
        reader.mark(0);
        reader.read(buffer, 0, 3);
        System.out.println(buffer);

    }
}
