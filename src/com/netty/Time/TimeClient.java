package com.netty.Time;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;

/**
 * @author zy
 * @date 2018-03-07 08:50
 */
public class TimeClient {
    public static void main(String[] args) {
        /**
         * client的实现与server不同的就是bootstrap和channel的实现
         */
        String host = "127.0.0.1";
        int port = 8888;

        /**
         * 如果只指定了一个eventloopgroup,那他既会作为一个bossgroup,也会作为一个workergourp
         * 尽管客户端用不到boss worker(我觉得是因为客户端不需要处理别人的链接)
         *
         */
        EventLoopGroup worker = new NioEventLoopGroup();

        try {
            Bootstrap client = new Bootstrap();
            /**
             * 代替NioServerSocketChannel的是NioSocketChannel
             */
            client.group(worker)
                    .channel(NioSocketChannel.class);

            //客户端的option没有childoption因为他没有父亲
            client.option(ChannelOption.SO_KEEPALIVE, true);
            client.handler(new ChannelInitializer<SocketChannel>() {

                @Override
                protected void initChannel(SocketChannel ch) throws Exception {
                    ch.pipeline().addLast(new TimeClientHandler());
                }
            });

            //connect去链接别的server
            ChannelFuture future = client.connect(host, port).sync();
            future.channel().closeFuture().sync();

        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            worker.shutdownGracefully();
        }

    }
}
