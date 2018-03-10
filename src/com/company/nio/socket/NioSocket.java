package com.company.nio.socket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

/**
 * @author zy
 * @date 2018-02-08 15:40
 */
public class NioSocket {
    public static String IP = "127.0.0.1";
    public static int PORT = 6666;

    public static void main(String[] args) {
//        RunBlockingClient();
        RunNonBlockingClient();
    }

    /**
     * selector client
     */

    public static void RunSelectoClient() {
        SocketChannel socketChannel = null;
        Selector selector = null;
        try {
            socketChannel = SocketChannel.open();
            socketChannel.connect(new InetSocketAddress(NioSocket.IP, NioSocket.PORT));
            socketChannel.configureBlocking(false);

            selector = Selector.open();

            SelectionKey key = socketChannel.register(selector, SelectionKey.OP_CONNECT | SelectionKey.OP_READ | SelectionKey.OP_WRITE);
            /**
             * 这个key就是代表这个channel注册到了selector选择器里
             */


            ByteBuffer buffer = ByteBuffer.allocate(512);
            key.attach(buffer);
            /**
             * key 中包含了interest集合,ready集合,Channel,Selector,和附加的对象
             * interest集合中,如上面register中的ops,read,write,connect,accept
             * ready集合中,是准备就绪的操作,也就是当该非阻塞操作到达之后进入的集合,之前在NON-BLOCKING中以
             *      循环的方式进行实现.
             * 附加对象,给定通道的附加对象,和通道一起使用的东西可以attach上去
             */

            int eventnum = selector.select();
            /**
             * eventnum 已经准备好的事件
             */

            while (eventnum > 0) {
                Set<SelectionKey> selectedKeys = selector.selectedKeys();

                Iterator<SelectionKey> ReadyChannelKeyIterator = selectedKeys.iterator();
                /**
                 * 对已经准备好的channle进行遍历,分别查看他们有啥事件被触发
                 */
                while (ReadyChannelKeyIterator.hasNext()) {
                    SelectionKey channlekey = ReadyChannelKeyIterator.next();
                    //
                    if (channlekey.isConnectable()) {
                        //doConnection
                    }
                    if (channlekey.isReadable()) {
                        //doread
                    }
                    if (channlekey.isWritable()) {
                        //dowrite
                    }

                    ReadyChannelKeyIterator.remove();
                    /**
                     * 处理完毕,将当前处理完的移除了,当下次就绪的时候,会再次加入
                     */
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * nio non-blocking client
     */
    public static void RunNonBlockingClient() {
        SocketChannel socketChannel = null;
        try {
            socketChannel = SocketChannel.open();
            socketChannel.connect(new InetSocketAddress(NioSocket.IP, NioSocket.PORT));
            socketChannel.configureBlocking(false);
            while (!socketChannel.finishConnect()) {
                System.out.println("wait success....");
            }
            Middle(socketChannel);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * nio blocking client
     */
    public static void RunBlockingClient() {
        SocketChannel socketChannel = null;
        try {
            //niosocket连接
            socketChannel = SocketChannel.open();
            socketChannel.connect(new InetSocketAddress(NioSocket.IP, NioSocket.PORT));
            Middle(socketChannel);
        } catch (IOException e) {
            e.printStackTrace();
        } finally{
            try {
                socketChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void Middle(SocketChannel socketChannel) throws IOException {
        //write
        String mydata = "hello my first nio socket\r";
        ByteBuffer writeBuffer = ByteBuffer.allocate(512);
        writeBuffer.clear();
        writeBuffer.put(mydata.getBytes());
        writeBuffer.flip();
        System.out.println("==============================");
        System.out.println("client send message:" + mydata);
        System.out.println("==============================");
        System.out.println();
        System.out.println();
        System.out.println("==============================");
        while (writeBuffer.hasRemaining()) {
            int writestate = socketChannel.write(writeBuffer);
            System.out.println("write over");
        }
        //close the output
        socketChannel.shutdownOutput();

        //read
        System.out.println("send over,ready to recive.......\n");


        ByteBuffer readBuffer = ByteBuffer.allocate(512);
        int read = socketChannel.read(readBuffer);
        System.out.println("client read content:");

        while (read != -1) {
            readBuffer.flip();
            while (readBuffer.hasRemaining()) {
                System.out.print((char) readBuffer.get());
            }
            readBuffer.compact();
            read = socketChannel.read(readBuffer);

        }

    }
}
