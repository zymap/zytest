package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:22
 */

/**
 * 线程不安全　懒汉模式
 */
public class Singleton1 {
    private static Singleton1 singleton1 = null;

    public static Singleton1 getInstance() {
        if (singleton1 == null) {
            singleton1 = new Singleton1();
        }
        return singleton1;
    }
}
