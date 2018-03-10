package com.company.concurrent;

import java.util.concurrent.CountDownLatch;

/**
 * @author zy
 * @date 2018-02-07 07:35
 */
public class MyCountDown {
    public static CountDownLatch latch = new CountDownLatch(2);

    public static void main(String[] args) throws InterruptedException {
        Thread thread = new Thread(new Runner());
        thread.setName("Runner1");

        Thread thread1 = new Thread(new Runner());
        thread1.setName("Runner2");

        Thread thread2 = new Thread(new Juger());
        thread2.setName("juger");


        thread.start();
        Thread.sleep(1000);
        thread1.start();
        thread2.start();
//        Thread[] threads = {thread, thread1, thread2};

//        ThreadGroup group = new ThreadGroup("competition");
//        group.enumerate(threads);
//        group.
    }
}

class Runner implements Runnable {
    @Override
    public void run() {
        System.out.println("Runner\t" + Thread.currentThread().getName());
        try {
            Thread.sleep(1000);

            System.out.println("==============" + Thread.currentThread().getName() + "\tready");
            MyCountDown.latch.countDown();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}

class Juger implements Runnable {

    @Override
    public void run() {
        System.out.println("Juger\t" + Thread.currentThread().getName());
        try {
            MyCountDown.latch.await();
            System.out.println("go--------");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
