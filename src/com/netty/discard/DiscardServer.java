package com.netty.discard;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;

/**
 * @author zy
 * @date 2018-03-06 19:37
 */
public class DiscardServer {

    private int port;

    public DiscardServer(int port) {
        this.port = port;
    }

    public void run() throws InterruptedException {

        /**
         * NioEventLoopGroup是用来处理IO的多线程时间循环器,
         * EventLoopGroup用来处理不同的传输
         * 因为是服务端应用,一般会用两个NioEventLoopGroup,一个经常被叫做boss,用来接收进来的链接
         * 第二个经常被叫做worker,用来处理已经被接受的链接,
         * 一旦boss接收到连接,就会把链接的信息注册到worker上
         *
         * 如何知道多少个线程被使用,如何映射到已经创建的channel上都需要依赖EventLoopGroup的实现,
         * 并且可以通过构造函数来配置他们的关系
         */
        EventLoopGroup bossGroup = new NioEventLoopGroup();
        EventLoopGroup workerGroup = new NioEventLoopGroup();
        try {

            /**
             *serverbootstrap是一个启动NIO服务的辅助启动类.
             */
            ServerBootstrap server = new ServerBootstrap();


            /**
             * option是提供给NioSererSocketChannel用来接收进来的链接
             * childoption是提供给父管道ServerChannel接收到的连接,在这个例子中是
             */
            server.group(bossGroup, workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .childHandler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception {
                            ch.pipeline().addLast(new DiscardServerHandler());
                        }
                    })
                    .option(ChannelOption.SO_BACKLOG, 128)
                    .childOption(ChannelOption.SO_KEEPALIVE, true);

            ChannelFuture future = server.bind(port).sync();

            future.channel().closeFuture().sync();
        }finally {
            workerGroup.shutdownGracefully();
            bossGroup.shutdownGracefully();
        }

    }

    public static void main(String[] args) throws InterruptedException {
        new DiscardServer(8888).run();
    }
}
