package com.company.basics;

/**
 * @author zy
 * @date 2018-01-09 16:11
 */
public class MyAbstract {
    public static void main(String[] args) {
        AbstractOne one = new AbstractOne();
        one.sub();
        System.out.println(one instanceof One);
    }
}

class AbstractOne extends One {

    @Override
    int add(int a) {
        return a >>> 1;
    }

    public void sub() {
        long m = 10;
        System.out.println(Long.toBinaryString(m));

    }
}

abstract class AbstractTwo extends One {

}

abstract class One {
    private int a;

    abstract int add(int a);

    public void sub() {
        int a = 10;
        System.out.println(Integer.toBinaryString(a));
        int b = add(a);
        System.out.println(Integer.toBinaryString(b));
    }
}

