package com.company.collectionzy.concurrent;

import java.util.concurrent.ConcurrentHashMap;

/**
 * @author zy
 * @date 2018-02-04 18:57
 */
public class MyConcurrentHashMap {
    public static void main(String[] args) {
        ConcurrentHashMap hashMap = new ConcurrentHashMap();
        hashMap.put(1, 3);
    }
}
