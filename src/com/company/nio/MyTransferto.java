package com.company.nio;

import com.company.io.FileUrl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

/**
 * @author zy
 * @date 2018-02-08 14:10
 */
public class MyTransferto {
    public static void main(String[] args) throws IOException {
        RandomAccessFile file = new RandomAccessFile(FileUrl.URLA, "rw");
        FileChannel channel = file.getChannel();

        RandomAccessFile file1 = new RandomAccessFile(FileUrl.URLB, "rw");
        FileChannel channel1 = file1.getChannel();

        long postion = channel.position();
        long count = channel.size();
        channel.transferTo(postion, count, channel1);


        long postion1 = channel1.position();
        long count1 = channel1.size();
        channel1.transferTo(postion1, count1, channel);


    }
}
