package com.company.collectionzy.List;

import java.util.Spliterator;
import java.util.Vector;

/**
 * @author zy
 * @date 2018-01-15 22:23
 */
public class MyVector {
    public static void main(String[] args) {
        Vector vector = new Vector();
        for (int i = 0; i < 10; i++) {
            vector.add(i);
        }
        show(vector);

        System.out.println(vector.capacity());

        System.out.println(vector.size());
        vector.ensureCapacity(15);
        System.out.println(vector.add(11));
        System.out.println(vector.size());

//        vector.

        /*
        * spliterator
        * */
        Spliterator spliterator = vector.spliterator();
        System.out.println(spliterator.characteristics());
        System.out.println(spliterator.estimateSize());
        System.out.println(spliterator.getExactSizeIfKnown());
        System.out.println(spliterator.tryAdvance(o -> System.out.println(o+"\t")));
    }

    public static void show(Vector vector) {
        vector.forEach(o -> System.out.print(o+"\t"));
    }
}
