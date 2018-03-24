package algorithm;

/**
 * @author zy
 * @date 2018-03-21 10:37
 */

/**
 * 题目:
 * 在一个二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。
 * 请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
 *
 * 要求:
 * 时间限制：1秒 空间限制：32768K
 *
 * 运行结果:
 * 运行时间：232ms 占用内存：16916k
 */
public class Searchone {
    public boolean Fine(int target, int[][] array) {
        boolean result = false;
        for (int i = 0; i < array.length; i++) {
            int[] temp = array[i];
            result = search(target, temp);
            if (result) {
                break;
            }
        }
        return result;
    }

    public static boolean search(int target, int[] array) {
        int low = 0;
        int high = array.length-1;
        while (low < high) {
            int mid = (low + high) / 2;
            if (target > array[low] && target < array[mid]) {
                high = mid - 1;
                continue;
            } else if (target > array[mid] && target < array[high]) {
                low = mid + 1;
                continue;
            } else {
                if (target == array[low] || target == array[high]) {
                    return true;
                }
                high--;
                low++;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        int[][] array = {{1, 2, 8, 9}, {2, 4, 9, 12}, {4, 7, 10, 13}, {6, 8, 11, 15}};
        int target = 7;
        System.out.println(new Searchone().Fine(7, array));
    }
}
