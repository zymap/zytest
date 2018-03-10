package com.company.nio;

import com.company.io.FileUrl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/**
 * @author zy
 * @date 2018-02-08 11:00
 */
public class MyFileBuffer {
    public static int SIZE = 128;

    public static void main(String[] args) throws IOException {
        write();

    }

    public static void read() throws IOException {
        RandomAccessFile file = new RandomAccessFile(FileUrl.URLB, "rw");
        FileChannel channel = file.getChannel();

        ByteBuffer buffer = ByteBuffer.allocate(SIZE);
        while (channel.read(buffer) != -1) {
            buffer.flip();
            while (buffer.hasRemaining()) {
                System.out.print((char) buffer.get());
            }
            buffer.compact();
        }
        channel.close();
    }

    public static void write() throws IOException {
        RandomAccessFile file = new RandomAccessFile(FileUrl.URLB, "rw");
        FileChannel channel = file.getChannel();

        ByteBuffer buffer = ByteBuffer.allocate(SIZE);
        String message = "randomaccessfile write in it";
        buffer.clear();
        buffer.put(message.getBytes());
        buffer.flip();
        while (buffer.hasRemaining()) {
            channel.write(buffer);
        }


        channel.close();
    }
}
