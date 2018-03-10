package com.company.Thread;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/**
 * @author zy
 * @date 2018-03-06 19:50
 */
public class FutureAndCall {
    public static void main(String[] args) throws ExecutionException, InterruptedException {
        Callable<String> callable = new Callable<String>() {
            @Override
            public String call() throws Exception {
                return "helloworld";
            }
        };

        FutureTask<String> task = new FutureTask<String>(callable);

        new Thread(task).start();

        System.out.println(task.get());

    }
}
