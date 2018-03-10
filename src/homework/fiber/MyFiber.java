package homework.fiber;

import homework.fiber.frame.Fiber;

import java.util.Scanner;

/**
 * zy on 17-12-21 .
 */
public class MyFiber {
    public static void main(String[] args) {
        Task task = new Task();
        task.init();

        new Scanner(System.in).nextLine();

        task.start();
        Task task1 = new Task();

    }
}
