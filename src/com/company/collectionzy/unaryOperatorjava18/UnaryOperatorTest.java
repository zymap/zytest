package com.company.collectionzy.unaryOperatorjava18;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.UnaryOperator;

/**
 * @author zy
 * @date 2017-12-24 16:55
 */

public class UnaryOperatorTest {
    /*
    * UnaryOperator 一元操作lambda表达式
    * */
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(10, 20, 30, 40);
        UnaryOperator<Integer> unaryOperator = integer -> integer * integer;
        unaryOpratorFun(unaryOperator, list).forEach(x-> System.out.println(x));
    }

    private static List<Integer> unaryOpratorFun(UnaryOperator<Integer> unaryOperator, List<Integer> list) {
        List<Integer> unlist = new ArrayList<>();
        list.forEach(integer -> unlist.add(unaryOperator.apply(integer)));
        return unlist;
    }
}
