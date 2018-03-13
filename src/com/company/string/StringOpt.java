package com.company.string;

/**
 * @author zy
 * @date 2018-03-11 14:37
 */
public class StringOpt {
    public static void main(String[] args) {
        String res;

        String a = "abc";
        String b = a + "def";
        res = b;
        System.out.println("==========");

        StringBuffer buffer = new StringBuffer();
        buffer.append("abc");
        buffer.append("def");
        res = buffer.toString();
        System.out.println("==========");


        StringBuilder builder = new StringBuilder();
        builder.append("abc");
        builder.append("def");
        res = builder.toString();
    }
}
