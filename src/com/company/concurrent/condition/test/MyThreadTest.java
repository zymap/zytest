package com.company.concurrent.condition.test;

import java.util.concurrent.CountDownLatch;

import static java.lang.Thread.currentThread;
import static java.lang.Thread.interrupted;

/**
 * @author zy
 * @date 2018-01-07 11:34
 */
public class MyThreadTest {

    public static void main(String[] args) {

            new MyThreadTest().testrun();

    }

    public void testrun() {
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
//                if (interrupted()) {
//                    System.out.println("error");
//                }
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

            }
        });

        t.start();
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("hello");
        t.interrupt();
    }

    public void run() throws InterruptedException {
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("i m one");
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });

        Thread t1 = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println(" i m two");
            }
        });

        Thread t2 = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println(" i m three");
            }
        });

        t.start();
        t1.start();
        t2.start();

        t.join();
        t2.join();
        t1.join();

        System.out.println(" i am the main");
    }

    public void run2() {
        CountDownLatch latch = new CountDownLatch(3);

    }
}