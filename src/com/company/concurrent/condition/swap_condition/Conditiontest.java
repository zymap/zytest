package com.company.concurrent.condition.swap_condition;

import java.util.Scanner;

/**
 * created by zy on 17-11-1 .
 */
public class Conditiontest {
    public static void main(String[] args) throws InterruptedException {
        final String[] ss = new String[1];
//        ReentrantLock lock = new ReentrantLock();
//        Condition condition = lock.newCondition();
//        Condition my = lock.newCondition();
        while (true) {
            System.out.println("in it");
            String scanner = new Scanner(System.in).nextLine();
            System.out.println("next time:"+scanner);
            new Thread(new Runnable() {
                @Override
                public void run() {
                    System.out.println("input http key");
                    Scanner scanner1 = new Scanner(System.in);
                    String key = scanner1.nextLine();
                    if (key.length() == 3){
                        Swap swap = new Swap();
                        System.out.println("input key http:"+key);
//                    my.signal();
                        String s = swap.getMessage(key);
                        ss[0] = s;
                        System.out.println(s + "\tout put result");
                    }
                }
            }).start();
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            new Thread(new Runnable() {
                @Override
                public void run() {
                    System.out.println("input key:");
                    String key1 = new Scanner(System.in).nextLine();
                    if (key1.length() ==4){
                        String key = key1.split("#")[1];
                        System.out.println("key is :"+key);
                        Value value = SwapHashmap.getValue(key);
                        System.out.println("input value");
                        String result = new Scanner(System.in).nextLine();
                        System.out.println("input value :"+result);
                        value.getSwap().setMessage(key, result);
                    }
//                    condition.signal();
                }
            }).start();

            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
//            condition.await();
        }
//        System.out.println(ss[0]);
    }
}
