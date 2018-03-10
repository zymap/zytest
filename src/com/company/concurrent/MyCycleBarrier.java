package com.company.concurrent;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;

/**
 * @author zy
 * @date 2018-02-07 07:50
 */
public class MyCycleBarrier {
    public static CyclicBarrier cyclicBarrier = new CyclicBarrier(3);

    public static void main(String[] args) {
        Thread thread = new Thread(new Waiter(1000));
        thread.setName("waiter 1");

        Thread thread1 = new Thread(new Waiter(2000));
        thread1.setName("waiter 2");

        Thread thread2 = new Thread(new Waiter(3000));
        thread2.setName("waiter 3");

        thread.start();
        thread1.start();
        thread2.start();
    }



}

class Waiter implements Runnable {

    private int waitTime;

    public Waiter(int waitTime) {
        this.waitTime = waitTime;
    }

    public void waitMechine() {
        try {
            Thread.sleep(waitTime);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        while (true) {
            waitMechine();
            System.out.println(Thread.currentThread().getName() + "\t is waiting");
            try {
                MyCycleBarrier.cyclicBarrier.await();
                System.out.println(Thread.currentThread().getName()+" go");

            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (BrokenBarrierException e) {
                e.printStackTrace();
            }
        }
    }
}
