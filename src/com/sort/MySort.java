package com.sort;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zy
 * @date 2018-03-07 13:21
 */
public class MySort {
    public static void main(String[] args) {
        ArrayList<Integer> list = new ArrayList<>();

    }

    private static int compare(int i, int j) {
        return i > j ? i : j;
    }

    //插入排序
    public static List insertSort(List list) {
        List<Integer> list1 = new ArrayList<Integer>();
        for (int i = 0; i < list.size(); i++) {
            int temp = (int) list.get(i);
            for (int j = 0; j < list.size(); j++) {
                temp = compare(temp, (Integer) list.get(j));
            }
            list1.add(temp);
        }
        return list1;
    }
}
