package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-06 16:12
 */
public class MyThreadLocal {
    public static ThreadLocal local = new ThreadLocal();
}

class Thread1 extends Thread {
    private static ThreadLocal local = MyThreadLocal.local;

    public void run() {
        System.out.println();
    }

}
