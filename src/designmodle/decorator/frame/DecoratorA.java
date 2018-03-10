package designmodle.decorator.frame;

/**
 * @author zy
 * @date 2018-03-04 11:17
 */
public class DecoratorA extends Decorator {
    private String State;

    public void dosomething() {
        super.dosomething();
        State = "hello";
        System.out.println("DecoratorA do " + State);
    }
}
