package homework.fiber.frame;

/**
 * @author zy
 * @date 2017-12-25 17:04
 */
public abstract class Fiber implements Executeable {
    public void init() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    try {
                        Fiber fiber = new TaskQueue().get();
                        FiberThreadPool.exec(fiber);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
    }

    public void await_task(Fiber fiber) {

    }

    public void notify_task() {

    }

    public void start() {
        new TaskQueue().add(this);
    }

    public void change(Fiber src,Fiber des){

    }
}
