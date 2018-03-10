package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-05 11:17
 */
public class MyJoin {

    public static void main(String[] args) throws InterruptedException {
        runJoin();
    }

    public static void runJoin() throws InterruptedException {
//        Thread thread = new Thread(new JoinThread());
//        thread.setName("Join 1");
//        Thread thread1 = new Thread(new JoinThread());
//        thread.setName("join 2");
//
//        thread.start();
//        MyDaemon.Other();
//        thread1.start();
//        thread1.join();
        Thread thread = new Thread(new JoinThread());
        thread.start();
        Thread.sleep(5);
        for (int i = 0; i < 100;i ++) {
            System.out.println(i);
            if (i == 50) {
                thread.join();
            }
        }

    }

    static class JoinThread implements Runnable{
        @Override
        public void run() {
            for (int i = 0; i < 1000;i++) {
                System.out.println(Thread.currentThread().getName()+"\t" + i);
            }
        }
    }
}
