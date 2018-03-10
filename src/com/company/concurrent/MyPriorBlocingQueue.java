package com.company.concurrent;

import java.util.concurrent.PriorityBlockingQueue;

/**
 * @author zy
 * @date 2018-02-07 10:01
 */
public class MyPriorBlocingQueue {
    public static void main(String[] args) {
        PriorityBlockingQueue queue = new PriorityBlockingQueue();
        queue.add(1);
        queue.add(2);
    }
}
