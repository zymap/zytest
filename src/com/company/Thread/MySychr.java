package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-06 11:10
 */
public class MySychr {
    public static void main(String[] args) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                test();
                System.out.println("1");
            }
        }).start();

        new Thread(new Runnable() {
            @Override
            public void run() {
                test();
                System.out.println("2");
            }
        }).start();
    }

    public synchronized static void test() {
        while (true) {

        }
    }
}
