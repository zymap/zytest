package javarealize;

/**
 * zy on 17-12-5 .
 */
public class java_String {
    public static void main(String[] args) {
        String string = new String("original");
        System.out.println(string);

        char[] value = {'c', 'h', 'a', 'r', ',', 'h', 'e', 'l', 'l', 'o'};
        String string1 = new String(value);
        System.out.println(string1);

        String string2 = new String(value, 0, 4);
        System.out.println(string2);

        int[] codePoints = {49,50};
        String string3 = new String(codePoints,1,1);
        System.out.println(string3);
    }
}
