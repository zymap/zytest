package com.company.Thread;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * @author zy
 * @date 2018-02-06 12:07
 */
public class MyLOck {
    public static void main(String[] args) {
        ReentrantLock lock = new ReentrantLock(true);


        lock.isFair();

        ReadWriteLock lock1 = new ReentrantReadWriteLock();
        lock1.readLock();
    }
}
