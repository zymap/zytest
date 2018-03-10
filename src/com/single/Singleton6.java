package com.single;

/**
 * @author zy
 * @date 2018-02-06 20:37
 */

/**
 * 线程安全　枚举
 */
public class Singleton6 {
    public static void main(String[] args) {
        Singleton.INSTANCE.other();
    }
}

 enum Singleton {
    INSTANCE;

    public void other() {

    }
}


