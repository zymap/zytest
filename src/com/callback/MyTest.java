package com.callback;

/**
 * @author zy
 * @date 2018-03-07 11:33
 */
public class MyTest {
    public static void main(String[] args) {
        MyEvent event = new MyEvent();
        event.registe(new MyListen());

        event.run();
    }
}
