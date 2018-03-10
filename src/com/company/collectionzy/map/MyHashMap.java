package com.company.collectionzy.map;

import java.util.HashMap;

/**
 * @author zy
 * @date 2018-01-16 14:26
 */
public class MyHashMap {
    public static void main(String[] args) {
        String s = "";
        s.hashCode();

        HashMap hashMap = new HashMap();
//        hashMap.i
        hashMap.put(1, 2);
        hashMap.put(2, null);
        System.out.println(hashMap.get(2));
        System.out.println(hashMap.containsKey(3));

//        int cap = 10;
//        int n = cap - 1;
//        n |= n >>> 1;        System.out.println(n);
//
//        n |= n >>> 2;        System.out.println(n);
//
//        n |= n >>> 4;        System.out.println(n);
//
//        n |= n >>> 8;        System.out.println(n);
//
//        n |= n >>> 16;

//        System.out.println(n);
    }
}
