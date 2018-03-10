package com.company.concurrent;

import java.util.concurrent.ArrayBlockingQueue;

/**
 * @author zy
 * @date 2017-12-25 10:58
 */
public class ABQ {
    public static void main(String[] args) {
        ArrayBlockingQueue q = new ArrayBlockingQueue(2);
        q.poll();
    }
}
