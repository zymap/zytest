package othertest;

/**
 * @author zy
 * @date 2018-02-06 21:22
 */
public class StringTest {
    public static void main(String[] args) {
        String a = "abcd";
        String b = new String("abcd");
        String c = "ab" + "cd";

        System.out.println(a == b);
        System.out.println(a == c);

        System.out.println(a.equals(b));
        System.out.println(a.equals(c));

        System.out.println(a.intern() == b.intern());

        int k = 10;
        while (k > 0) {
            int parent = (k - 1) >>> 1;
            k = parent;
            System.out.println(k);

        }

//        System.out.println(parent);
    }

    public static void stringTest() {
        StringBuffer buffer = new StringBuffer();
        StringBuilder builder = new StringBuilder();
    }
}
