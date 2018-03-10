package com.company.collectionzy;

import java.util.Random;

/**
 * @author zy
 * @date 2018-02-03 13:56
 */
public class TimSort {
    public static void main(String[] args) {
//        for (int i = 0; i < 20; i++) {
//            int num = new Random().nextInt(320);
//            System.out.println(num);
//            int min = minRunLength(num);
//            System.out.println(min);
//            System.out.println("====================");
//        }
        test();

        System.out.println(minRunLength(63));

    }

    public static void test() {
        int n = 11;
        int r = 0;
        for (int i = 1;i<100;i++) {
            System.out.println(i & 1);
            r |= i & 1;
            System.out.println(r);
            System.out.println("=======================");
        }
    }

    public static int minRunLength(int n) {
        assert n >= 0;
        int r = 0;      // Becomes 1 if any 1 bits are shifted off
        while (n >= 32) {
            r |= (n & 1);
            n >>= 1;
            System.out.println(n);
        }
        System.out.println("===================");
        return n + r;
    }
}
