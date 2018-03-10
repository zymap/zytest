

/**
 * @author zy
 * @date 2018-02-05 12:42
 */
public class MyTest {
    public static void main(String[] args) {
        Object object = new Object();
        synchronized (object) {
            System.out.println("hello world");
        }

        synchronized (object) {
            System.out.println("hello");
        }
//
//        try {
//            Thread.sleep(10);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }

        synchronized (MyTest.class) {

        }
    }
}
