package com.company.collectionzy.List;

import java.util.*;

/**
 * zy on 17-12-20 .
 */
public class LinkedListtest {
    public static void main(String[] args) {
//        LinkedList linkedList = new LinkedList();
//        for (int i = 0; i < 20; i++) {
//            linkedList.add(i);
//        }
//        linkedList.descendingIterator();
//        ListIterator();
        ListDescendingIterator();
    }

    public static void test() {
//        Collections.synchronizedMap()
    }

    /*
    * list中的
    * */
    public static void ListDescendingIterator() {
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < 20; i++) {
            linkedList.add(i);
        }
        Iterator iterator = linkedList.descendingIterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }

    /*
    * list中的listiterator可以遍历前驱，后继
    * */
    public static void ListIterator(){
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < 20; i++) {
            linkedList.add(i);
        }
        ListIterator iterator = linkedList.listIterator();
        while (iterator.hasNext()) {
            System.out.println("第"+iterator.nextIndex()+"是"+iterator.next());
            if (!iterator.hasNext()) {
                System.out.println("======================================");
                while (iterator.hasPrevious()) {
                    System.out.println("第"+iterator.previousIndex()+"是"+iterator.previous());
                }
                break;
            }
        }


    }


    /*
    * 在linkedlis操作里的modcount
    * */
    public void Modcount() {
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < 20; i++) {
            linkedList.add(i);
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                Iterator iterator = linkedList.iterator();
                while (iterator.hasNext()) {
                    System.out.println(iterator.next());
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                linkedList.add(10,10);
            }
        }).start();
    }



}
