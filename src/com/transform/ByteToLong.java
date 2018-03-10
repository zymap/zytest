package com.transform;

import java.nio.ByteBuffer;

/**
 * @author zy
 * @date 2018-02-06 19:44
 */
public class ByteToLong {
    public static Long Bytes8ToLong(byte[] bytes) {
        long value = 0;
        ByteBuffer byteBuffer = ByteBuffer.allocate(8);
        byteBuffer.put(bytes);
        byteBuffer.flip();
        value = byteBuffer.getLong();
        return value;
    }

    public static byte[] LongToBytes(long value) {
        ByteBuffer byteBuffer = ByteBuffer.allocate(8);
        byteBuffer.putLong(value);
        return byteBuffer.array();
    }

    public static void main(String[] args) {
        Long a = 100l;
        Long b = Bytes8ToLong(LongToBytes(a));
        System.out.println(a);
        System.out.println(b);
    }
}
