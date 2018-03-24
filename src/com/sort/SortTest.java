package com.sort;

/**
 * @author zy
 * @date 2018-03-19 15:24
 */
public class SortTest {
    public static void main(String[] args) {
        split(0,5);
    }

    public static void split(int begin, int end) {
        if (begin == end) {
            return;
        } else {
            int mid = (begin + end) / 2;
            split(begin, mid);
            split(mid + 1, end);
            System.out.println(begin + "==" + end);
        }
    }
}
