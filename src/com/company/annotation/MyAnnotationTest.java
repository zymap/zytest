package com.company.annotation;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zy
 * @date 2018-01-28 11:34
 */
public class MyAnnotationTest {
    public static void main(String[] args) {
        List list = new ArrayList();
    }
}
@Deprecated
class Test {
    @Deprecated
    public void info() {
        System.out.println("aaaa");
    }
    @Deprecated
    private String string;
}
