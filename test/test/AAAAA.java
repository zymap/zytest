package test;

import sun.misc.Unsafe;

/**
 * @author zy
 * @date 2018-02-23 08:14
 */
public class AAAAA {
    public static void main(String[] args) {
        System.out.println(Integer.SIZE);
        int i = -3;
        int y = 3;
        int x = -1;
        System.out.println(Integer.toBinaryString(x));
        System.out.println(Integer.toBinaryString(y<<29));
        System.out.println(Integer.toBinaryString(i<<29));
//        Unsa
    }
}
