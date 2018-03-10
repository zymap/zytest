package com.company.nio.scatterGather;

import com.company.io.FileUrl;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;

/**
 * @author zy
 * @date 2018-02-08 13:47
 */
public class MyScatter {
    public static void main(String[] args) throws IOException {
        Charset charset = Charset.forName("utf-8");


        File file = new File(FileUrl.GatherScatter);
        if (!file.exists()) {
            if (file.createNewFile()) {
                System.out.println("create "+file.getName()+" success");
            }
        }

        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        FileChannel channel = randomAccessFile.getChannel();

        ByteBuffer reader = ByteBuffer.allocate(16);
        ByteBuffer body = ByteBuffer.allocate(32);

        ByteBuffer[] byteBuffer = {reader, body};

        channel.read(reader);
        reader.flip();
        System.out.println(charset.newDecoder().decode(reader));


        channel.read(body);
        body.flip();
        System.out.println(charset.newDecoder().decode(body));

        channel.close();
        randomAccessFile.close();
    }
}
