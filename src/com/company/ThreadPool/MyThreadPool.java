package com.company.ThreadPool;

import java.util.List;
import java.util.Scanner;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;


/**
 * @author zy
 * @date 2018-01-08 14:53
 */
public class MyThreadPool {
    public static void main(String[] args) throws InterruptedException {
        testScheduled();
    }

    public static void testScheduled() throws InterruptedException {
        ScheduledExecutorService executor = Executors.newScheduledThreadPool(2);
//        Executors executors = Executors.newScheduledThreadPool(2, new ThreadFactory() {
//            @Override
//            public Thread newThread(Runnable r) {
//                return null;
//            }
//        })
        Scanner scanner = new Scanner(System.in);
        while (!(scanner.nextLine().equals("end"))) {
            executor.schedule(new Runnable() {
                @Override
                public void run() {
                    System.out.println("hello schedule");
                }
            },5000, TimeUnit.MILLISECONDS);
            if (scanner.nextLine().equals("shutdown")) {
                executor.shutdown();
            }
            if (scanner.nextLine().equals("shutdownnow")) {
                List<Runnable> list = executor.shutdownNow();
                for (Runnable r : list) {
                    System.out.println("num");
                }
            }
        }

    }
}
