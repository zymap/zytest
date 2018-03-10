package homework.fiber.frame;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * zy on 17-12-21 .
 */
public class FiberThreadPool {
    private static ExecutorService executor = Executors.newFixedThreadPool(10);

    public static void exec(Executeable executeable) {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                executeable.exec();
            }
        });
    }
}
