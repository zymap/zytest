package homework.fiber.frame;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/**
 * zy on 17-12-21 .
 */
public class TaskQueue {
    public static ArrayBlockingQueue<Fiber> fibers = new ArrayBlockingQueue<Fiber>(10);
    public static Map<Fiber, Fiber> fiberFiberMap = new HashMap<>();
    private ReentrantLock lock;
    private Condition notempty;

    public void add(Fiber fiber) {
        System.out.println("add 一个任务");
        fibers.add(fiber);
    }

    public Fiber get() throws InterruptedException {
        return fibers.take();
    }


//    public static void main(String[] args) throws InterruptedException {
//
//        new Thread(new Runnable() {
//            @Override
//            public void run() {
//                Fiber fiber ;
//                System.out.println("run");
//                while ((fiber = TaskQueue.fibers.poll()) != null) {
//                    System.out.println("exec");
//                    fiber.exec();
//                }
//            }
//        }).start();
//
//        Thread.sleep(2000);
//        Fiber fiber = new Fiber();
//        TaskQueue taskQueue = new TaskQueue();
//        taskQueue.add(fiber);
//
//
//        Scanner scanner = new Scanner(System.in);
//        scanner.nextLine();
//        InputStream in = System.in;
//
//    }
}
