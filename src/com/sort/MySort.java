package com.sort;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @author zy
 * @date 2018-03-07 13:21
 */
public class MySort {
    public static void main(String[] args) {
        testBubbleSort();
        testSimpleSelectionSort();
        testStraightInsertionSort();
    }

    public static int[] createRandomArray(int size) {
        System.out.println("create random array:");
        int array[] = new int[size];
        for (int i = 0; i < size; i++) {
            array[i] = new Random().nextInt(100);
        }
        return array;
    }

    public static void printArray(int[] array) {
        for (int i : array) {
            System.out.print(i + "\t");
        }
        System.out.println();
    }

    public static List<Integer> createRandomList(int size) {
        System.out.println("create random list:");
        ArrayList<Integer> random = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            random.add(new Random().nextInt(100));
        }
        return random;
    }

    public static void printList(List<Integer> list) {
        list.forEach(x -> System.out.print(x + "\t"));
        System.out.println();
    }

    /**
     * 排序算法的稳定与不稳定:如果a在b之前,a=b,在排序之后a还在b之前是稳定的 否则就是不稳定的.
     */

    /**
     * 交换排序
     *
     * 冒泡排序 (稳定)
     * 时间复杂度:
     *      最好:O(n)
     *      最坏:O(n²)
     *      平均时间复杂度:O(n²)
     * 空间复杂度:O(1)
     *
     * @param randomList 待排序list
     * @return
     */
    public static List<Integer> bubbleSort(List<Integer> randomList) {
        System.out.println("buble sort:");
        for (int i = 0; i < randomList.size() - 1; i++) {
            for (int j = 0; j < randomList.size() - i - 1; j++) {
                int a = randomList.get(j);
                int b = randomList.get(j + 1);
                if (a > b) {
                    randomList.set(j, b);
                    randomList.set(j + 1, a);
                }
            }
        }
        return randomList;
    }

    public static void testBubbleSort() {
        List<Integer> list = createRandomList(10);
        printList(list);
        list = bubbleSort(list);
        printList(list);
    }


    /**
     * 选择排序
     * 简单选择排序(不稳定)
     * 时间复杂度:
     *      最好:O(n²)
     *      最坏:O(n²)
     *      平均时间复杂度:O(n²)
     * 空间复杂度:O(1)
     *
     * @param randomList
     * @return
     */
    public static List<Integer> SimpleSelectionSort(List<Integer> randomList) {
        System.out.println("Simple Selection Sort:");
        for (int i = 0; i < randomList.size(); i++) {
            int a = randomList.get(i);
            for (int j = i + 1; j < randomList.size(); j++) {
                int b = randomList.get(j);
                if (b < a) {
                    randomList.set(i, b);
                    randomList.set(j, a);
                    a = randomList.get(i);
                }
            }
        }
        return randomList;
    }

    public static void testSimpleSelectionSort() {
        List<Integer> list = createRandomList(10);
        printList(list);
        list = SimpleSelectionSort(list);
        printList(list);
    }

    /**
     * 插入排序
     * 直接插入排序(稳定)
     * 时间复杂度:
     *      最好:O(n)
     *      最坏:O(n²)
     *      平均时间复杂度:O(n²)
     * 空间复杂度:O(1)
     *
     * @param randomList
     * @return
     */
    public static int[] straightInsertionSort(int[] randomList) {
        System.out.println("straight insertion sort");
        for (int i = 0; i < randomList.length - 1; i++) {
            for (int j = i + 1; j > 0; j--) {
                int temp = randomList[j];
                int k = j;
                while (k > 0 && temp < randomList[k - 1]) {
                    randomList[k] = randomList[k - 1];
                    k = k - 1;
                }
                randomList[k] = temp;
            }
        }
        return randomList;
    }

    public static void testStraightInsertionSort() {
        int a[] = createRandomArray(10);
        printArray(a);
        a = straightInsertionSort(a);
        printArray(a);
    }

    /**
     * 插入排序
     * 希尔排序(不稳定) 又叫缩小增量排序
     * 时间复杂度:
     *      最好:O(nlog²n)
     *      最坏:O(nlog²n)
     *      平均时间复杂度:O(nlog²n)
     * 空间复杂度:O(1)
     *
     * @param randomArray
     * @return
     */
    public static int[] shellSort(int[] randomArray) {
        int gap = randomArray.length / 2;
        while (gap >= 1) {

        }
        return randomArray;
    }

    private static int[] shellInsertionSort(int[] randomList,int gap) {
        for (int i = 0; i < randomList.length - 1; i++) {
            for (int j = i + 1; j > 0; j--) {
                int temp = randomList[j];
                int k = j;
                while (k > 0 && temp < randomList[k - 1]) {
                    randomList[k] = randomList[k - 1];
                    k = k - 1;
                }
                randomList[k] = temp;
            }
        }
        return randomList;
    }

    public static int[] HeapSort(int[] random) {
        return random;
    }

    public static int[] QuickSort(int[] random) {
        int basic = random[0];
        int low = 0;
        int height = random.length;
        while (low<height) {
            while (low < height && basic > random[height]) {
                ++low;
//                int temp = random[]
            }
        }
        return random;
    }

}
