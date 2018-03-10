package com.company.nio;

import com.company.io.FileUrl;

import java.io.IOException;
import java.net.StandardSocketOptions;
import java.nio.ByteBuffer;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.CompletionHandler;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.concurrent.Future;

/**
 * @author zy
 * @date 2018-02-09 22:13
 */
public class MyAIO {

    private static AsynchronousFileChannel channel;

    public static void main(String[] args) {
//        WriteToAsynFileChannelByFuture();
//
//        ReadFromAsynFileChannelByFuture();

//        WriteToAsynFileChannelByCompletionHandler();
        ReadFromAsynFileChannelByFuture();

        ReadFromAsynFileChannelByCompletionHandler();
    }

    /**
     * 创建channel
     *
     * @return　
     * @throws IOException
     */
    private static AsynchronousFileChannel createAsyncChannel() throws IOException {
        if (channel != null && channel.isOpen()) {
            return channel;
        }
        /**
         * 获取路径并打开channel,open第一个参数是打开的路径,第二个参数是操作,可以写多个操作
         */
        Path path = Paths.get(FileUrl.URLA);

        if (!Files.exists(path)) {
            Files.createFile(path);
        }

        channel = AsynchronousFileChannel.open(path, StandardOpenOption.READ, StandardOpenOption.WRITE);
        return channel;
    }

    public static void ReadFromAsynFileChannelByFuture() {
        try {
            /**
             * 获取channel
             */
            channel = createAsyncChannel();

            /**
             * 创建future对象来进行对AIO的读操作
             */
            ByteBuffer readBuffer = ByteBuffer.allocate(32);
            readBuffer.clear();
            long postion = 0;

            Future<Integer> opration = channel.read(readBuffer, postion);

            /**
             * 等待数据
             */
            while (!opration.isDone());

            readBuffer.flip();
            byte[] data = new byte[readBuffer.limit()];
            readBuffer.get(data);
            System.out.println(new String(data));

            readBuffer.clear();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void WriteToAsynFileChannelByFuture() {
        try {
            channel = createAsyncChannel();

            ByteBuffer writeBuffer = ByteBuffer.allocate(32);
            writeBuffer.clear();
            long position = 0;

            String writeData = "this is my aio test data";

            writeBuffer.put(writeData.getBytes());
            writeBuffer.flip();

            System.out.println("===========mytest============");
            System.out.println(writeBuffer.limit());
            byte[] bytes = new byte[writeBuffer.limit()];
            writeBuffer.get(bytes);
            System.out.println(new String(bytes));
            writeBuffer.flip();
            System.out.println("==========testover===========\n");

            Future<Integer> operation = channel.write(writeBuffer, position);
            writeBuffer.clear();

            while (!operation.isDone());

            System.out.println("=========Future is write done!===========\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * error:在测试过程中不确定的输出,有可能什么也没有
     */

    public static void ReadFromAsynFileChannelByCompletionHandler() {
        try {
            channel = createAsyncChannel();

            ByteBuffer readBuffer = ByteBuffer.allocate(128);
            readBuffer.clear();
            long postion = 0;


//            channel.read(readBuffer, postion);
//            readBuffer.flip();
//            while (readBuffer.hasRemaining()) {
//                System.out.print((char) readBuffer.get());
//            }
//            System.out.println();

            channel.read(readBuffer, postion, readBuffer, new CompletionHandler<Integer, ByteBuffer>() {
                @Override
                public void completed(Integer result, ByteBuffer attachment) {
                    while (result<=0);
                    /**
                     * result 所读字节数
                     */
                    System.out.println("=======completed=======");
                    System.out.println("result is :" + result);
                    attachment.flip();
                    byte[] bytes = new byte[attachment.limit()];
                    attachment.get(bytes);
                    System.out.println(new String(bytes));

                    attachment.clear();
                    System.out.println("=======completed over=======\n");
                }

                @Override
                public void failed(Throwable exc, ByteBuffer attachment) {
                    System.out.println("ReadFromAsynFileChannelByCompletionHandler error");
                    System.out.println(exc);
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void WriteToAsynFileChannelByCompletionHandler() {
        try {
            channel = createAsyncChannel();

            ByteBuffer writeBuffer = ByteBuffer.allocate(128);
            writeBuffer.clear();

            String testData = "this is WriteToAsynFileChannelByCompletionHandler test data";
            writeBuffer.put(testData.getBytes());
            writeBuffer.flip();

//            System.out.println("===============test data===============");
//            while (writeBuffer.hasRemaining()) {
//                System.out.print((char)writeBuffer.get());
//            }
//            System.out.println();
//            writeBuffer.flip();
//            System.out.println("===============test over===============");

            long postion = 0;
            channel.write(writeBuffer, postion, writeBuffer, new CompletionHandler<Integer, ByteBuffer>() {
                @Override
                public void completed(Integer result, ByteBuffer attachment) {
                    System.out.println("write bytes :" + result);
                }

                @Override
                public void failed(Throwable exc, ByteBuffer attachment) {
                    System.out.println("write failed");
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
