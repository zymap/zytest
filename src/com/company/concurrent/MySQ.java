package com.company.concurrent;

/**
 * @author zy
 * @date 2018-02-07 10:48
 */

import java.util.concurrent.SynchronousQueue;

/**
 * SychronizedQueue
 */
public class MySQ {
    public static SynchronousQueue<Integer> queue = new SynchronousQueue<>();

    public static void main(String[] args) throws InterruptedException {
        new Thread(new Produce()).start();

//        Thread.sleep(3000);

        new Thread(new Consumer()).start();
    }
}

class Produce implements Runnable {
    @Override
    public void run() {
        int something = 10;
        System.out.println("produce :" + something);

        try {
            Thread.sleep(2000);
            MySQ.queue.put(something);
            System.out.println("produce success");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}


class Consumer implements Runnable {

    @Override
    public void run() {
        System.out.println("wait consumer something");

        try {
            int a = MySQ.queue.take();
            System.out.println("consumer " + a);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}