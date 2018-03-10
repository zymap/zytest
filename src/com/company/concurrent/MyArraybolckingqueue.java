package com.company.concurrent;

import java.util.concurrent.ArrayBlockingQueue;

/**
 * @author zy
 * @date 2018-02-06 14:46
 */
public class MyArraybolckingqueue {
    public static void main(String[] args) {
        ArrayBlockingQueue queue = new ArrayBlockingQueue(10);
        queue.add(10);
//        queue.take();
    }
}
