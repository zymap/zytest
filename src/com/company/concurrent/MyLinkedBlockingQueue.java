package com.company.concurrent;

import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * @author zy
 * @date 2018-02-07 08:14
 */
public class MyLinkedBlockingQueue {
    public static void main(String[] args) {
        LinkedBlockingQueue queue = new LinkedBlockingQueue();


        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    queue.take();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
//        queue.put();
    }
}
