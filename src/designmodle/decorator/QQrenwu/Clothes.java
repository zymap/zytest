package designmodle.decorator.QQrenwu;

/**
 * @author zy
 * @date 2018-03-04 11:29
 */
public class Clothes extends Decorator {
    @Override
    public void dress() {
        super.dress();
        super.cloth.add("clothes");
        System.out.println("dress clothes");
    }
}
