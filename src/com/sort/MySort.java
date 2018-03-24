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
//        testMergeSort();

        testHeapSort();
    }

    public static int[] createRandomArray(int size) {
        System.out.println("create random array:");
        int array[] = new int[size];
        for (int i = 0; i < size; i++) {
            array[i] = new Random().nextInt(size);
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
        for (int gap = randomArray.length >> 1; gap > 0; gap = gap >> 1) {
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
     * 归并排序
     * 时间复杂度:
     *      最好:O(n)
     *      最坏:O(nlogn)
     *      平均时间复杂度:O(nlogn)
     * 空间复杂度:O(n)
     *
     *
     * @param random
     * @param
     * @param
     * @return
     */
    public static int[] mergeSort(int[] random) {

        int right_max, right_min, left_max, left_min;
        int randomsize = random.length;
        int[] temp = new int[randomsize];
        int tempprt = 0;

        for (int i = 1; i <= randomsize; i <<= 1) {
            for (int j = 0; j < randomsize; j += (i << 1)) {
                int x, y;
                int lowstart = j, lowend = (x = (j + i - 1)) < randomsize ? x : randomsize - 1;
                int highstart = lowend + 1, highend = (y = j + (i << 1) - 1) < randomsize ? y : randomsize - 1;
                tempprt = j;
                while (lowstart <= lowend && highstart <= highend) {
                    temp[tempprt++] = random[lowstart] < random[highstart] ? random[lowstart++] : random[highstart++];
                }
                while (lowstart <= lowend) {
                    temp[tempprt++] = random[lowstart++];
                }
                while (highstart <= highend) {
                    temp[tempprt++] = random[highstart++];
                }
            }
            int[] x = random;
            random = temp;
            temp = x;
        }

        return random;
    }

    private static void recursiveMergeSort(int[] random, int[] result, int start, int end) {
        if (start >= end)
            return;

        int length = end - start;
        int mid = length >> 1 + start;

        int lowstart = start, lowend = mid;
        int highstart = mid, highend = end;
        int resultptr = start;

        while (lowstart < lowend && highstart < highend) {
            result[resultptr++] = random[lowstart] < random[highstart] ? random[lowstart++] : random[highstart++];
        }

        while (lowstart < lowend) {
            result[resultptr++] = random[lowstart++];
        }
        while (highstart < highend) {
            result[resultptr++] = random[highstart++];
        }

        for (resultptr = start; resultptr < end; resultptr++) {
            random[resultptr] = result[resultptr];
        }
    }

    public static void recursiveMergeSort(int[] random) {
        int[] result = new int[random.length];
        recursiveMergeSort(random, result, 0, random.length - 1);
    }

    public static void merge_sort(int[] arr) {
        int len = arr.length;
        int[] result = new int[len];
        int block, start;

        // 原版代码的迭代次数少了一次，没有考虑到奇数列数组的情况
        for(block = 1; block < len; block <<= 2) {
            for (start = 0; start < len; start += (block << 1)) {
                int low = start;
                int mid = (start + block) < len ? (start + block) : len;
                int high = (start + block << 1) < len ? (start + 2 * block) : len;
                //两个块的起始下标及结束下标
                int start1 = low, end1 = mid;
                int start2 = mid, end2 = high;
                //开始对两个block进行归并排序
                while (start1 < end1 && start2 < end2) {
                    result[low++] = arr[start1] < arr[start2] ? arr[start1++] : arr[start2++];
                }
                while (start1 < end1) {
                    result[low++] = arr[start1++];
                }
                while (start2 < end2) {
                    result[low++] = arr[start2++];
                }
            }
            int[] temp = arr;
            arr = result;
            result = temp;
        }
        result = arr;
    }

    public static void testMergeSort() {
        int[] array = createRandomArray(1000);
        printArray(array);

        startCountTime();
        merge_sort(array);
        showtime();
        printArray(array);

        startCountTime();
        mergeSort(array);
        showtime();
        printArray(array);

        startCountTime();
        recursiveMergeSort(array);
        showtime();
        printArray(array);
    }


    public static void heapSort(int[] random) {
        createBigHeadHeap(random, random.length);

        for (int i = 0; i < random.length; i++) {
            swap(random, 0, random.length - 1 - i);
            createBigHeadHeap(random, random.length - i - 1);
        }
    }

    //升序一般构造大顶堆
    private static void createBigHeadHeap(int[] array,int end) {
        int lastnotleafnode = (end >> 1) - 1;
        for (int node = lastnotleafnode; node >= 0; node--) {
            int maxnode = 0;
            int right = 0;
            int left = 0;
            int leftnode = (left = (node << 1) + 1) > end - 1 ? end - 1 : left;
            int rightnode = (right = (node << 1) + 2) > end - 1 ? end - 1 : right;
            maxnode = array[leftnode] > array[rightnode] ? leftnode : rightnode;

            int temp = node;
            while (array[temp]<array[maxnode]){
                int t = array[temp];
                array[temp] = array[maxnode];
                array[maxnode] = t;

                if ((temp << 1) + 1 > end - 1)
                    break;

                temp = maxnode;
                leftnode = (left = (temp << 1) + 1) > end - 1 ? end - 1 : left;
                rightnode = (right = (temp << 1) + 2) > end - 1 ? end - 1 : right;
                maxnode = array[leftnode] > array[rightnode] ? leftnode : rightnode;
            }
        }
    }

    //降序一般构造小顶堆
    private static void createSmallHeadHeap(int[] array, int end) {
        int lastnotleafnode = (end >> 1) - 1;
        for (int node = lastnotleafnode; node >= 0; node--) {
            int minnode = 0;
            int right = 0;
            int leftnode = (node << 1) + 1;
            int rightnode = (right = (node << 1) + 2) > end - 1 ? end - 1 : right;
            minnode = array[leftnode] < array[rightnode] ? leftnode : rightnode;
            if (array[node] > array[minnode]) {
                int temp = array[node];
                array[node] = array[minnode];
                array[minnode] = temp;
            }
        }
    }

    public static void testHeapSort() {
        int[] array = createRandomArray(10000);
        printArray(array);
        startCountTime();

        heapSort(array);
        showtime();
        printArray(array);
    }




    //the time record

    private static long time = 0;

    public static void startCountTime() {
        time = System.nanoTime();
    }

    public static void showtime() {
        System.out.print("time:" + String.valueOf(System.nanoTime()-time + "ns"+"\t"));
    }
}