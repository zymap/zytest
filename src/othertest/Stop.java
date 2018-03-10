package othertest;

/**
 * created by zy on 17-9-22 .
 */
public class Stop {

    public static void main(String[] args) throws InterruptedException {
//        Stop stop = new Stop();
//        Thread thread = new Thread(new Runnable() {
//            @Override
//            public void run() {
//                stop.dosome();
//                while (true) {
//                    try {
//                        Thread.sleep(1000);
//                    } catch (InterruptedException e) {
//                        e.printStackTrace();
//                    }
//                    System.out.println("hello");
//                }
//            }
//        });
//        thread.start();
//        Thread.sleep(3000);
//        new Thread(new Runnable() {
//            @Override
//            public void run() {
//                stop.dodosome();
//            }
//        }).start();
        new Stop().test();
    }

    public synchronized void dosome() {
        System.out.println("in dosome");
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("in dosome");
        }
    }


    public void test() {
        if (System.out.append("hello").equals("hello")) {
            System.out.println("dsfsfasdfsdf");
        } else {
            System.out.println("world");
        }
    }
    public synchronized void dodosome() {
        System.out.println("dodosome");
    }


}
