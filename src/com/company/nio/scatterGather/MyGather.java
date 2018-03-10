package com.company.nio.scatterGather;

import com.company.io.FileUrl;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/**
 * @author zy
 * @date 2018-02-08 13:21
 */
public class MyGather {
    public static void main(String[] args) throws IOException {
        File file = new File(FileUrl.GatherScatter);
        System.out.println(file.getAbsolutePath());
        if (!file.exists()) {
            if (file.createNewFile()) {
                System.out.println("create " + file.getName() + " success");
            }
        }

//        FileInputStream inputStream = new FileInputStream(file);
        RandomAccessFile inputStream = new RandomAccessFile(file,"rw");
        FileChannel fileChannel = inputStream.getChannel();

        ByteBuffer header = ByteBuffer.allocate(16);
        ByteBuffer body = ByteBuffer.allocate(62);
//        header.put()
//        header.clear();
//        body.clear();
        byte[] bytes = new byte[16];
        for (int i = 0; i < 16; i++) {
            bytes[i] = '\0';
        }
        String messagehead = "messagehead";
        System.arraycopy(messagehead.getBytes(), 0,bytes, 0, messagehead.length());
        System.out.println(bytes.length);

//        header.
        header.put(bytes);
        body.put("messagebody".getBytes());

        ByteBuffer[] message = new ByteBuffer[]{header, body};

        header.flip();
        body.flip();

        long bytelenth = fileChannel.write(message);

        System.out.println("write length:" + bytelenth);
        fileChannel.close();
        inputStream.close();

    }
}
