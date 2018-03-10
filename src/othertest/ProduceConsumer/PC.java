package othertest.ProduceConsumer;

import java.util.LinkedList;
import java.util.Stack;

/**
 * @author zy
 * @date 2018-02-06 18:24
 */
public class PC {
    private int[] a = new int[10];
    private int size = 0;

    public void produce(int value) {
        if (a.length == size) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        a[size] = value;
        ++size;
    }

    public void consumer() {
        if (size == 0) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        System.out.println(a[size]);
        --size;
    }

    public static void main(String[] args) throws InterruptedException {
        Queue queue = new Queue();
        queue.runP();
//        queue.runC();

//        Thread.sleep(100);

    }

}

class Queue {
    private static LinkedList<Integer> queue = new LinkedList<>();
    private static int MAXSIZE = 10;

    public void runC() {

//        new Consumer().setna.start();
    }

    public void runP() {
        Consumer consumer = new Consumer();
        consumer.setName("CONSUMER");
        Produce produce = new Produce();
        produce.setName("produce");
        consumer.start();
        produce.start();
    }

    static class Produce extends Thread {
        @Override
        public void run() {
           put(10);
        }

        public void put(int value) {
//            while (true) {
                synchronized (queue) {
//                    System.out.println("p in");
                    if (queue.size() == MAXSIZE) {
                        try {
                            queue.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    queue.push(value);
                    System.out.println("produce a value:" + value);
                    queue.notify();

                }
//            }
        }
    }

    static class Consumer extends Thread {
        public void get() {
//            while (true) {
                synchronized (queue) {
                    if (queue.size() == 0) {
                        try {
                            queue.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    int a = queue.pop();
                    System.out.println("consume a value:" + a);
                    queue.notify();
                }
//            }
        }

        public void run() {
            get();
        }
    }
}

class Consumer extends Thread {

}

class Produce extends Thread {

}
