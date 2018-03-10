package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:25
 */

/**
 * 线程安全　懒汉模式
 */
public class Singleton2 {
    private static Singleton2 singleton2 = null;

    public static Singleton2 getInstance() {
        synchronized (singleton2) {
            if (singleton2 == null) {
                singleton2 = new Singleton2();
            }
        }
        return singleton2;
    }

    public synchronized static Singleton2 getSingleton2() {
        if (singleton2 == null) {
            singleton2 = new Singleton2();
        }
        return singleton2;
    }
}
