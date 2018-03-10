package othertest;

/**
 * @author zy
 * @date 2018-02-06 21:16
 */
public class BreakA {
    public static void main(String[] args) {
        B:
        System.out.println("hello");
        for (; ; ) {
            B:
            while (true) {
                while (true) {
                    break B;
                }
            }

        }

    }
}
