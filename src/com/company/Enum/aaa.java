package com.company.Enum;

/**
 * @author zy
 * @date 2018-02-06 20:12
 */
public class aaa {
    private static aaa ourInstance = new aaa();

    public static aaa getInstance() {
        return ourInstance;
    }

    private aaa() {
    }
}
