package com.company.collectionzy.map;

import java.util.Hashtable;

/**
 * @author zy
 * @date 2018-02-03 20:22
 */
public class MyHashtable {
    public static void main(String[] args) {
        Hashtable hashtable = new Hashtable();
        hashtable.put(1, 2);
    }

    public static void test() {
        int a = 19;
        int hash = Integer.hashCode(a);
        int x = 0x7FFFFFFF;
        System.out.println(Integer.toBinaryString(x).length());
        System.out.println(Integer.toBinaryString(hash&0x7FFFFFFF));
        int index = (hash & 0x7FFFFFFF) % 2;
        System.out.println(index);
    }

//    public
}
