package com.company.basics;

/**
 * @author zy
 * @date 2018-01-09 16:14
 */
public class MyInterface {
    public static void main(String[] args) {
        OneInterface oneInterface = new OneInterface();
        Inter_One.minu();
        System.out.println(Inter_One.a);

        TwoInterface twoInterface = new TwoInterface() {
            @Override
            public void add() {

            }

            @Override
            public void sub() {

            }
        };
        twoInterface.Two();

    }
}

class OneInterface implements Inter_One {

    @Override
    public void add() {
        System.out.println("oneinterface add");
    }

    @Override
    public void sub() {
        System.out.println("oneinterface sub");
    }


}

abstract class TwoInterface implements Inter_One {
    public void Two() {
        System.out.println("two");
    }
}

interface Inter_One {
    static int a = 0;

//    public Inter_One();

    public void add();

    void sub();

    static void minu() {
        System.out.println("Inter_One static minu");
    }


}
