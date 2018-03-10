package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:43
 */

/**
 * 线程安全　双重校验
 */
public class Singleton7 {
    private static Singleton7 singleton7 = null;

    public synchronized static Singleton7 getInstance() {
        if (singleton7 == null) {
            synchronized (Singleton7.class) {
                if (singleton7 == null) {
                    singleton7 = new Singleton7();
                }
            }
        }
        return singleton7;
    }
}
