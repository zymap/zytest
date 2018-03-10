package com.company.charsetTransform;

import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.ByteBuffer;

/**
 * @author zy
 * @date 2018-02-07 19:57
 */
public class MyTransform {
    public static void main(String[] args) throws CharacterCodingException {
        System.out.println(transfer("utf-8","unicode","大学"));
    }

    public static String transfer(String from, String to, String value) throws CharacterCodingException {

        Charset other = Charset.forName(from);

        CharsetEncoder utf8encode = other.newEncoder();
        CharsetDecoder utf8decode = other.newDecoder();


        Charset charset = Charset.forName(to);

        CharsetEncoder charsetEncoder = charset.newEncoder();
        CharsetDecoder charsetDecoder = charset.newDecoder();

        CharBuffer charBuffer = CharBuffer.allocate(16);

        charBuffer.put(value);

        charBuffer.flip();

        ByteBuffer byteBuffer = utf8encode.encode(charBuffer);
        for (int i = 0; i < byteBuffer.limit(); i++) {
            System.out.print(byteBuffer.get(i) + "\t");
        }
        System.out.println("\n" +charsetDecoder.decode(byteBuffer));
        String a = charsetDecoder.decode(byteBuffer).toString();

        return a;
    }


}
