package com.sort;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 * @author zy
 * @date 2018-03-07 13:21
 */
public class MySort {
    public static void main(String[] args) {
//        testBubbleSort();
//        testSimpleSelectionSort();
//        testStraightInsertionSort();

//        testQuickSort();
        testMergeSort();
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
        System.out.println(Arrays.toString(array));
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
        System.out.println("shell sort:");
        for (int gap = randomArray.length / 2; gap > 0; gap = gap / 2) {
            for (int i = gap; i < randomArray.length; i++) {
                int basic = i - gap;
                int j = i;
                int temp = randomArray[j];
                while (j - gap >= 0 && randomArray[j] < randomArray[j - gap]) {
                    randomArray[j] = randomArray[j - gap];
                    j -= gap;
                }
                randomArray[j] = temp;
            }
        }
        return randomArray;
    }

    public static void testShellSort() {
        int a[] = createRandomArray(10);
        printArray(a);

        shellSort(a);
        printArray(a);
    }


    public static int[] HeapSort(int[] random) {
        return random;
    }


    /**
     * 交换排序
     * 快速排序 (不稳定)
     * 时间复杂度:
     *      最好:O(nlogn)
     *      最坏:O(n²)
     *      平均时间复杂度:O(nlogn)
     * 空间复杂度:O(logn)
     *
     * @param random
     * @param begin
     * @param end
     */
    public static void quickSort(int random[], int begin, int end) {
        if (begin < end) {
            int p = partition(random, begin, end);
            quickSort(random, begin, p - 1);
            quickSort(random, p + 1, end);
        }
    }

    private static void swap(int random[], int i, int j) {
        int temp = random[i];
        random[i] = random[j];
        random[j] = temp;
    }

    public static int partition(int random[], int low, int high) {
        int basic = random[low];
        while (low < high) {
            while (low < high && random[high] > basic) {
                --high;
            }
            swap(random, low, high);
            while (low < high && basic > random[low]) {
                ++low;
            }
            swap(random, low, high);
        }
        return low;
    }

    public static void testQuickSort() {
        int a[] = createRandomArray(10);
        printArray(a);
        System.out.println("quick sort:");
        quickSort(a, 0, 9);
        printArray(a);
    }

    /**
     *
     *
     * @param random
     * @param
     * @param
     * @return
     */

    public static int[] mergeSort(int random[]) {
        System.out.println("merge sort:");
        int temp[] = new int[random.length];
        mergeSort(random, 0, random.length, temp);
        return random;
    }

    public static void split(int[] random, int head, int tail,int[] temp) {
        System.out.println(head + "------" + tail);
        if (head < tail) {
            int mid = (head + tail) / 2;
            split(random, head, mid - 1, temp);
            split(random, mid + 1, tail, temp);
        }
        return;
    }

    private static void mergeSort(int random[], int begin, int end, int temp[]) {
        System.out.println();
        if (begin < end) {
            int mid = (begin + end) / 2;
            mergeSort(random, begin, mid, temp);
            mergeSort(random, mid + 1, end, temp);
            merge(random, begin, mid, end, temp);
        }
    }

    public static void merge(int random[], int begin, int mid, int end,int temp[]) {
        int left = begin;
        int right = mid + 1;
        int temp_ptr = 0;
        while (left < mid && right < end) {
            if (random[left] < random[right]) {
                temp[temp_ptr++] = random[left++];
            } else {
                temp[temp_ptr++] = random[right++];
            }
        }

        while (left < mid) {
            temp[temp_ptr++] = random[left++];
        }
        while (right < end) {
            temp[temp_ptr++] = random[right++];
        }

        temp_ptr = 0;
        while (left < right) {
            random[begin++] = temp[temp_ptr++];
        }
    }

    public static void testMergeSort() {

//        int low = 0;
//        int high = 10;
//        int mid;
//
//        while (true) {
//            mid = (low + high) / 2;
//            high = mid;
//            System.out.println(mid);
//            if (mid == 1) {
//                break;
//            }
//        }


        int a[] = createRandomArray(11);
        int[] temp = new int[a.length];
        split(a, 0, a.length, temp);
//        printArray(a);
//
//        mergeSort(a);
//        printArray(a);
    }



}