package com.callback;

/**
 * @author zy
 * @date 2018-03-07 11:33
 */
public class MyEvent extends Event {
    @Override
    public void dosomething() {
        System.out.println("hello this is my event");
    }
}
