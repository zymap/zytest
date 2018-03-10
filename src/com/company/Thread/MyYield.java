package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-05 12:02
 */
public class MyYield extends Thread {
    public void run() {
        for (int i = 0; i < 50; i++) {
            System.out.println(Thread.currentThread().getName() + "\t" + i);
            if (i == 25) {
                Thread.yield();
            }
        }
    }

    public static void main(String[] args) {
        MyYield yield1 = new MyYield();
        yield1.setName("yield1");
        yield1.setPriority(1);

        MyYield yield2 = new MyYield();
        yield2.setPriority(Thread.NORM_PRIORITY);
        yield2.setName("yield2");

        MyYield yield3 = new MyYield();
        yield3.setName("yield3");
        yield3.setPriority(Thread.MAX_PRIORITY);

        yield1.start();
        yield2.start();
        yield3.start();
    }

}
