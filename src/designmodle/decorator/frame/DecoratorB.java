package designmodle.decorator.frame;

/**
 * @author zy
 * @date 2018-03-04 11:19
 */
public class DecoratorB extends Decorator {

    @Override
    public void dosomething() {
        super.dosomething();
        System.out.println("dosomething B");
    }
}
