package designmodle.simpleFactory;

/**
 * @author zy
 * @date 2018-03-01 10:48
 */
public abstract class Operation {
    private int a;
    private int b;

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public abstract int getResult();
}

class Add extends Operation {

    @Override
    public int getResult() {
        return super.getA() + super.getB();
    }
}

class Minu extends Operation {

    @Override
    public int getResult() {
        return getA() - getB();
    }
}
