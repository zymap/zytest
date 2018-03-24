package algorithm;

/**
 * @author zy
 * @date 2018-03-21 11:10
 */

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/**
 * 题目:
 * 请实现一个函数，将一个字符串中的空格替换成“%20”。例如，当字符串为We Are Happy.
 * 则经过替换之后的字符串为We%20Are%20Happy。
 *
 * 要求:
 * 时间限制：1秒 空间限制：32768K
 *
 * 结果:
 *运行时间：15ms 占用内存：9276k
 */
public class Solutiontwo {
    public static void main(String[] args) throws ExecutionException, InterruptedException {
        StringBuffer buffer = new StringBuffer("we are happy");
        System.out.println(new Solutiontwo().replaceSpace(buffer));

    }

    public String replaceSpace(StringBuffer str) {
        String result = str.toString();
        result = result.replace(" ", "%20");
        return result;
    }
}
