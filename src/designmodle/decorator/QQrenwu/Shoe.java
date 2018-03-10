package designmodle.decorator.QQrenwu;

/**
 * @author zy
 * @date 2018-03-04 11:28
 */
public class Shoe extends Decorator {
    private String shoe = "shoe";

    @Override
    public void dress() {
        super.dress();
        super.cloth.add("shoe");
        System.out.println("dress " + shoe);
    }
}
