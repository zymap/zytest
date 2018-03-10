package com.company.Thread;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/**
 * @author zy
 * @date 2018-02-05 10:31
 */
public class MyThread {
    public static void main(String[] args) throws InterruptedException, ExecutionException {
//        start1Thread();
//        System.out.println("=========");
//        start2Thread();
//        System.out.println("=========");
//        start3Thread();
        start4Thread();
    }

    static class S1 extends Thread {
        @Override
        public void run() {
            for (int i = 0 ; i < 100;i++) {
                System.out.println("S1\t"+i);
            }
        }
    }

    public static void start1Thread() throws InterruptedException {
        S1 s1 = new S1();
        s1.start();
        Thread.sleep(1);
        System.out.println("hello world");
    }

    static class S2 implements Runnable {
        @Override
        public void run() {
            for (int i = 0 ; i < 100;i++) {
                System.out.println("S2\t"+i);
            }
        }
    }

    public static void start2Thread() throws InterruptedException {
        new Thread(new S2()).start();
        Thread.sleep(1);
        System.out.println("hello world");
    }

    public static void start3Thread() throws InterruptedException {
        new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 100; i++) {
                    System.out.println("S3\t" + i);
                }
            }
        }).start();
        Thread.sleep(1);

        System.out.println("hello world");
    }

    static class S3 implements Callable{

        @Override
        public Object call() throws Exception {
            return 1 << 16;
        }
    }

    public static void start4Thread() throws ExecutionException, InterruptedException {
        S3 s3 = new S3();
        FutureTask task = new FutureTask(s3);
        Thread thread = new Thread(task);
        thread.start();
        System.out.println(task.get());
    }

}
