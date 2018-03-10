package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:35
 */

/**
 * 线程安全　内部静态类
 */
public class Singleton5 {

    public static Singleton5 getInstance() {
        return InnerSingleton.singleton5;
    }


    private static class InnerSingleton {
        private static Singleton5 singleton5 = new Singleton5();
    }
}
