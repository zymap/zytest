package com.company.Compare;

import java.lang.ref.ReferenceQueue;

/**
 * @author zy
 * @date 2018-01-05 18:14
 */
public class MyCompare {
    public static void main(String[] args) {
        int a = 1;
        int b = 1;
        System.out.println(a == b);

        String s1 = "abc";
        String s2 = "abc";
        int a1 = a;

        System.out.println( s1.equals(s2));

        MyCompareable myCompareable = new MyCompareable();
        MyCompareable myCompareable1 = new MyCompareable();
        System.out.println(myCompareable.hashCode());
        System.out.println(myCompareable1.hashCode());
        System.out.println(myCompareable == myCompareable1);
        System.out.println( myCompareable.equals(myCompareable1));


        int bb = 150;
        Integer bbb = 150;
        System.out.println(bb == bbb);

        String abc = "abc";
        char[] abcc = {'a', 'b', 'c'};
        System.out.println(abc.equals(abcc));

    }
}

class MyCompareable {



    @Override
    public boolean equals(Object obj) {
        if (this.hashCode() == obj.hashCode()) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 1;
    }
}
