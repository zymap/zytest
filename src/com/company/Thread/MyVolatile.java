package com.company.Thread;

/**
 * @author zy
 * @date 2018-02-05 13:36
 */

// java -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -Xcomp

public class MyVolatile {
    private volatile int a = 0;

    private volatile int[] b;


    public void inc() {
        a++;
    }

    public static void main(String[] args) {
        System.out.println("hello world");

        byte[] a ;
//        long b = a.;
//        new Long(a);

    }
}

