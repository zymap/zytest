package com.company.collectionzy.set;

import java.util.HashSet;
import java.util.Set;

/**
 * @author zy
 * @date 2018-01-08 11:27
 */
public class MySet {
    public static void main(String[] args) {
        MySet set = new MySet();
        set.SetOne();

        set = null;
    }

    public void SetOne() {
        HashSet set = new HashSet<>();
        for (int i = 0; i < 1000; i++) {
//            set.add(i, i);
        }

        for (Object o : set
                ) {
            System.out.println(o);
        }
    }
}
