package com.company.nio;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Pipe;
import java.nio.charset.Charset;

/**
 * @author zy
 * @date 2018-02-09 18:37
 */
public class MyPipe {
    public static Pipe pipe;
    static {
        try {
            pipe = Pipe.open();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Thread writeThread = new Thread(new Runnable() {
            @Override
            public void run() {
                writeToPipeSink();
            }
        });
        writeThread.setName("writethread");

        Thread readThread = new Thread(new Runnable() {
            @Override
            public void run() {
                readFromPipeSource();
            }
        });
        readThread.setName("readthread");

        writeThread.start();
        for (int i = 0; i < 100; i++) {

        }
        readThread.start();
    }

    /**
     * 从sink管道内写入
     */
    public static void writeToPipeSink() {
        Pipe.SinkChannel sinkChannel = pipe.sink();
        /**
         * 获取写通道sinckChannel
         */

        String writeMessage = "this is my pipe channel";
        ByteBuffer writeBuffer = ByteBuffer.allocate(32);
        writeBuffer.clear();
        writeBuffer.put(writeMessage.getBytes());
        writeBuffer.flip();

        while (writeBuffer.hasRemaining()) {
            try {
                sinkChannel.write(writeBuffer);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("write over....");

    }

    /**
     * 从pipeSource 中读出
     */
    public static void readFromPipeSource() {
        Pipe.SourceChannel sourceChannel = pipe.source();
        /**
         * 获取读通道sourceChannel
         */

//        Charset charset = Charset.forName("unicode");


        ByteBuffer readbuffer = ByteBuffer.allocate(32);
        try {
            int readnum = sourceChannel.read(readbuffer);
            readbuffer.flip();

            System.out.println("read number:" + readnum);
            System.out.println("the content is:");
            while (readbuffer.hasRemaining()) {
                System.out.print((char)readbuffer.get());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
