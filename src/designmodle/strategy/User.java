package designmodle.strategy;

/**
 * @author zy
 * @date 2018-03-04 11:05
 */
public class User {
    public static void main(String[] args) {
        Context context = new Context(new ConcreteStrategyA());
        context.ContextInterface();

        Context context1 = new Context(new ConcreteStrategyB());
        context1.ContextInterface();

    }
}
