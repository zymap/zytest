package com.company.io.inputstream;

import com.company.io.FileUrl;

import java.io.*;

/**
 * @author zy
 * @date 2018-02-07 15:26
 */
public class MyFileterInputStream {
    public static void main(String[] args) throws IOException {
//        FilterInputStream filterInputStream = new FilterInputStream();
//        PushbackInputstream();
        BufferInputstream();
    }

    public static void PushbackInputstream() throws IOException {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(new FileInputStream(FileUrl.URLA));
        byte[] bytes = new byte[1];
        pushbackInputStream.read(bytes);
        System.out.println(new String(bytes));

        pushbackInputStream.unread(bytes);
        pushbackInputStream.read(bytes);
        System.out.println(new String(bytes));
    }

    public static void BufferInputstream() {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(FileUrl.URLA));
            System.out.println(bufferedInputStream.available());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public static void DataInput() {
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(FileUrl.URLA));
//            dataInputStream
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }
}
