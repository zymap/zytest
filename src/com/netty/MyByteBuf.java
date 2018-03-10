package com.netty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;

/**
 * @author zy
 * @date 2018-03-06 19:26
 */
public class MyByteBuf {
    public static void main(String[] args) {
        ByteBuf byteBuf = Unpooled.wrappedBuffer(new byte[10]);
        ByteBuf byteBuf1 = Unpooled.buffer(10);
        byteBuf1.writeByte('1');
    }
}
