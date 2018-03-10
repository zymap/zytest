package com.company.nio.socket;

import io.netty.buffer.ByteBuf;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

/**
 * @author zy
 * @date 2018-02-08 15:51
 */
public class NioServerSocket {
    public static int PORT = 6666;
    public static void main(String[] args) {
//        RunBlockingServer();
//        RunNonBlockingServer();
        EpollServer();

    }


    /**
     * nio non-blocking server
     */
    public static void RunNonBlockingServer() {
        ServerSocketChannel serverSocketChannel = null;
        try {
            serverSocketChannel = ServerSocketChannel.open();
            serverSocketChannel.socket().bind(new InetSocketAddress(NioServerSocket.PORT));
            serverSocketChannel.configureBlocking(false);
            while (true) {
                SocketChannel socketChannel = serverSocketChannel.accept();
                if (socketChannel != null) {
                    Middle(socketChannel);
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * nio blocking server
     */

    public static void RunBlockingServer() {
        ServerSocketChannel serverSocketChannel = null;
        try {
            serverSocketChannel = ServerSocketChannel.open();
            serverSocketChannel.socket().bind(new InetSocketAddress(NioServerSocket.PORT));

            while (true) {
                System.out.println("==============ready to accept==============");
                SocketChannel socketChannel = serverSocketChannel.accept();
                System.out.println("accept.....");
                Middle(socketChannel);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                serverSocketChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void Middle(SocketChannel socketChannel) throws IOException {
        ByteBuffer readBuffer = ByteBuffer.allocate(512);
        System.out.println("==============================");
        System.out.println("server recive content:");
        while (socketChannel.read(readBuffer) != -1) {
            readBuffer.flip();
            while (readBuffer.hasRemaining()) {
                System.out.print((char) readBuffer.get());
            }
            readBuffer.compact();
//                    readsign = socketChannel.read(readBuffer);
        }
        socketChannel.shutdownInput();


        System.out.println();
        System.out.println("read over.........");
        System.out.println("==============================");
        System.out.println("server send to client:");

        ByteBuffer writeBuffer = ByteBuffer.allocate(512);

        String serverMessage = "this is my first nio server socket";
        writeBuffer.clear();
        writeBuffer.put(serverMessage.getBytes());
        writeBuffer.flip();
        while (writeBuffer.hasRemaining()) {
            socketChannel.write(writeBuffer);
        }
        System.out.println(serverMessage);
        System.out.println("==============================");

        socketChannel.close();
    }


    public static void EpollServer() {
        int port = 8888;

        ServerSocketChannel serverSocketChannel;
        Selector selector;

        try {
            serverSocketChannel = ServerSocketChannel.open();
            serverSocketChannel.bind(new InetSocketAddress(port));
            serverSocketChannel.configureBlocking(false);

            selector = Selector.open();

            SelectionKey key = serverSocketChannel.register(selector, SelectionKey.OP_ACCEPT);

            ByteBuffer buffer = ByteBuffer.allocate(1024);
            key.attach(buffer);

            int eventnum = selector.select();

            while (eventnum > 0) {

                System.out.println("this is my nio........");
                Set<SelectionKey> selectionKeys = selector.selectedKeys();

                Iterator<SelectionKey> readyChannelKeyIterator = selectionKeys.iterator();

                while (readyChannelKeyIterator.hasNext()) {
                    SelectionKey channelKey = readyChannelKeyIterator.next();
                    if (channelKey.isAcceptable()) {
                        ServerSocketChannel serverSocketChannel1 = (ServerSocketChannel) channelKey.channel();
                        SocketChannel socketChannel = serverSocketChannel1.accept();
                        socketChannel.configureBlocking(false);
                        socketChannel.register(selector, SelectionKey.OP_READ);
                    }

                    if (channelKey.isWritable()) {

                    }

                    if (channelKey.isReadable()) {

                    }

                    readyChannelKeyIterator.remove();
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
