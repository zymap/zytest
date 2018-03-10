package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-05 10:53
 */
public class MyDaemon {
    public static void main(String[] args) {
//        runDaemon();
//        Other();
        ErrorrunDaemon();
        Other();
    }

    public static void Other() {
        for (int i = 0; i < 200; i++) {
            System.out.println("other \t" + i);
        }
    }

    public static void runDaemon() {
        Thread thread = new Thread(new MyDaemonThread());
        thread.setDaemon(true);
        thread.setName("daemonThread");

        thread.start();
    }

    public static void ErrorrunDaemon() {
        Thread thread = new Thread(new MyDaemonThread());
        thread.setName("errorDaemon");
        thread.start();
        thread.setDaemon(true);
        System.out.println("error line");
        Other();
//        thread.setName("errorDaemon1");
    }

    static class MyDaemonThread implements Runnable {
        @Override
        public void run() {
            for (int i = 0; i < 1000; i++) {
                System.out.println("daemon thread\t" + i);
            }
        }
    }
}
