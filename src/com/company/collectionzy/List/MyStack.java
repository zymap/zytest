package com.company.collectionzy.List;

import java.util.Stack;

/**
 * @author zy
 * @date 2018-01-15 22:04
 */
public class MyStack {
    public static void main(String[] args) {
        Stack stack = new Stack();
        stack.push("a");
        stack.push(null);
        stack.push(null);
        stack.push(null);
        stack.push(null);
        stack.push(null);
        stack.push(null);
        stack.push("b");
        System.out.println(stack.empty());
        System.out.println(stack.peek());
        System.out.println(stack.pop());
        System.out.println(stack.peek());
        System.out.println(stack.search(null));
    }
}
