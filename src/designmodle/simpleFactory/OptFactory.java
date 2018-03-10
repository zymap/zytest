package designmodle.simpleFactory;

/**
 * @author zy
 * @date 2018-03-01 10:47
 */
public class OptFactory {
    public static Operation createOpt(String opt) {
        Operation operation = null;
        switch (opt) {
            case "+":
                operation = new Add();
                break;
            case "-":
                operation = new Minu();
                break;
            case "*":
                break;
            case "/":
                break;
        }
        return operation;
    }
}
