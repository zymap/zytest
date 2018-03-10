package com.company.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;

/**
 * @author zy
 * @date 2018-01-28 17:51
 */

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@interface setting {
    String url() default "/";

    String function();
}

class WebAnalyse {
    public void analyse() {


        if (MyAnnotation.class.isAnnotationPresent(setting.class)) {
            setting setting = (com.company.annotation.setting) MyAnnotation.class
                    .getAnnotation(setting.class);
            System.out.println(setting.url());
            System.out.println(setting.function());
        }
    }

//    public static void main(String[] args) {
//        new WebAnalyse().analyse();
//    }
}

public class MyAnnotation {
    public static void main(String[] args) {
        for (Method o: MyAnnotation.class.getMethods()
             ) {

            System.out.println(o.getName()+"\t"+o.isAnnotationPresent(setting.class));

        }
    }

    @setting(url = "/help",function = "post")
    public void deal() {
        new WebAnalyse().analyse();
        System.out.println("deal something");
    }
}
