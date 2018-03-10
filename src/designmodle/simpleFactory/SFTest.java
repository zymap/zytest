package designmodle.simpleFactory;

/**
 * @author zy
 * @date 2018-03-04 10:57
 */
public class SFTest {
    public static void main(String[] args) {
        Operation opt = OptFactory.createOpt("+");

        opt.setA(1);
        opt.setB(3);

        System.out.println(opt.getResult());

    }
}
