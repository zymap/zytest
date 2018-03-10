package com.company.collectionzy.List;

import java.util.*;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.UnaryOperator;

/**
 * zy on 17-12-24 .
 */
public class ArrayListzy {
    public static void main(String[] args) {
        srot();

//        ArrayList list = new ArrayList(11);
////        list.add(10);
//
////        System.out.println(list.size());
//
////        ArrayList arrayList = new ArrayList();
//        for (int i = 0; i < 12; i++) {
//            list.add(i);
//        }
//        list.trimToSize();
//
//        list.add(12);
//
//        arrayList.size();
//
//
////        arrayList
//        arrayList.forEach(new Consumer() {
//            @Override
//            public void accept(Object o) {
//                System.out.println(o);
//            }
//        });
//        System.out.println("==================");
//        /*arraycopy 复制新数组病返回*/
//        arrayList.add(1,1);
//        System.out.println("==================");
//
//        /*
//        *
//        * */
//
////        Collections.EMPTY_LIST
////        arrayList.addAll(Collections.emptyList())
//
////        arrayList.replaceAll();
//
//        UnaryOperator unaryOperator = UnaryOperator.identity();
//        Function function = new Function() {
//            @Override
//            public Object apply(Object o) {
//                return null;
//            }
//        }
////        unaryOperator.andThen();
////        unaryOperator.
//
//
////        arrayList.add(1);
//
//        ;
////        arrayList
//        MyListTest test = new MyListTest();

    }

    public static void srot() {
        ArrayList list = new ArrayList();
        for (int i = 0; i < 40; i++) {
            list.add(new Random().nextInt(200));
        }
        Iterator iterator1 = list.iterator();
        while (iterator1.hasNext()) {
            System.out.println(iterator1.next());
        }
        System.out.println("========================");
        list.sort(null);

        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }

}

class MyListTest implements RandomAccess {

}
