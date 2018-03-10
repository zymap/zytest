package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:28
 */

/**
 * 线程安全　饿汉模式
 */
public class Singleton3 {
    private static Singleton3 singleton3 = new Singleton3();

    public synchronized static Singleton3 getInstance() {
        return singleton3;
    }

}

class Singleton4 {
    private static Singleton4 singleton4 = null;
    static {
        singleton4 = new Singleton4();
    }

    public synchronized static Singleton4 getInstance() {
        return singleton4;
    }

}
