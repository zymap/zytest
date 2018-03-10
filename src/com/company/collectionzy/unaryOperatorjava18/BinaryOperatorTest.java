package com.company.collectionzy.unaryOperatorjava18;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;

/**
 * @author zy
 * @date 2017-12-24 17:09
 */
public class BinaryOperatorTest {

    /*
    * 二元操作lambda
    * */
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<>();
        map.put("x", "a");
        map.put("y", "b");
        map.put("z", "c");
        BinaryOperator<String> binaryOperator = (s1, s2) -> s1 + "-" + s2;
        bianryOperatorFun(binaryOperator, map).forEach(x -> System.out.println(x));
    }

    private static List<String> bianryOperatorFun(BinaryOperator<String> binaryOperator, Map<String, String> map) {
        List<String> biList = new ArrayList<>();
        map.forEach((s1, s2) -> biList.add(binaryOperator.apply(s1, s2)));
        return biList;
    }
}
