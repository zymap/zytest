package homework.fiber;

import homework.fiber.frame.Fiber;

/**
 * @author zy
 * @date 2017-12-25 17:18
 */
public class Task extends Fiber{
    @Override
    public void exec() {
        System.out.println("hello world");
    }
}
