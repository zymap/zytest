package com.company.assertt;

/**
 * created by zy on 17-9-27 .
 */

//运行时java -ea
public class AssertTest {
    public static void main(String[] args) {
        int a = 20;
        int b = 10;
        for (int i = 0; i < 30; i++){
            assert i < a;

            System.out.println(i);
        }
        System.out.println("hello");
    }
}
