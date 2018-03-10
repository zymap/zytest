package othertest.extendtest;

/**
 * @author zy
 * @date 2018-02-06 20:50
 */

public class A{
    public static void main(String[] args) {
        B b = new B();
        b.D();
        C c = (C) b;
        c.D();
    }
}
class D {
    public void D() {
        System.out.println("d");
    }
}

class B extends D {
    @Override
    public void D() {
        System.out.println("B");
    }
}

class C extends B {
    @Override
    public void D() {
        System.out.println("C");
    }
}