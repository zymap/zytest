package com.company.nio.socket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;

/**
 * @author zy
 * @date 2018-02-09 17:59
 */
public class NioDatagramChannle {
    public static String IP = "127.0.0.1";
    public static int PORT = 6666;
    public static int BUFFERSIZE = 128;

    public static void main(String[] args) {
        Thread server = new Thread(new Runnable() {
            @Override
            public void run() {
                UDPserver();
            }
        });

        Thread client = new Thread(new Runnable() {
            @Override
            public void run() {
                UDPClient();
            }
        });

        server.setName("serverThread");
        client.setName("clientThread");

        server.start();
        client.start();
    }

    public static void UDPserver() {
        DatagramChannel datagramChannel = null;
        try {
            datagramChannel = DatagramChannel.open();
            datagramChannel.socket().bind(new InetSocketAddress(NioDatagramChannle.PORT));

            ByteBuffer buffer = ByteBuffer.allocate(NioDatagramChannle.BUFFERSIZE);
            buffer.clear();
            datagramChannel.receive(buffer);

            while (buffer.hasRemaining()) {
                System.out.print((char)buffer.get());
            }
            System.out.println();
            /**
             * buffer 将会接受数据包,当buffer容不下收到的数据,多出的数据被丢弃.
             */

            String writeData = "this is my udp data, nio datagramchannel send this";
            String date = String.valueOf(System.currentTimeMillis());
            String alldata = writeData + date;

            ByteBuffer writeBuffer = ByteBuffer.allocate(NioDatagramChannle.BUFFERSIZE);
            writeBuffer.clear();
            writeBuffer.put(alldata.getBytes());
            writeBuffer.flip();

            int bytesent = datagramChannel.send(writeBuffer, new InetSocketAddress(NioDatagramChannle.PORT));

            /**
             * 送到特定的地址
             */
//            datagramChannel.connect(new InetSocketAddress(NioDatagramChannle.IP, NioDatagramChannle.PORT));
            /**
             * 客户端连接后　也可以通过read or write 来使用
             */

        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                datagramChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    public static void UDPClient() {

        /**
         * 建立channel,并连接相应的ip,port
         */
        DatagramChannel clientchannel = null;
        try {
            clientchannel = DatagramChannel.open();

            clientchannel.connect(new InetSocketAddress(NioDatagramChannle.IP, NioDatagramChannle.PORT));

            /**
             * 发送数据
             */
            ByteBuffer writeBuffer = ByteBuffer.allocate(NioDatagramChannle.BUFFERSIZE);
            writeBuffer.clear();

            String clientData = "this is my nio UDPClient test message";
            writeBuffer.put(clientData.getBytes());
            writeBuffer.flip();

            while (writeBuffer.hasRemaining()) {
                clientchannel.send(writeBuffer, new InetSocketAddress(NioDatagramChannle.IP, NioDatagramChannle.PORT));
//                System.out.println("write lenth:" + readWriteNum);
            }

            System.out.println("write over.....");


            ByteBuffer readBuffer = ByteBuffer.allocate(NioDatagramChannle.BUFFERSIZE);
            readBuffer.clear();

            clientchannel.receive(readBuffer);

            readBuffer.flip();
            while (readBuffer.hasRemaining()) {
                System.out.print(readBuffer.get());
            }
            System.out.println();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
