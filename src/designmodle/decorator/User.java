package designmodle.decorator;

import designmodle.decorator.QQrenwu.Clothes;
import designmodle.decorator.QQrenwu.P1;
import designmodle.decorator.QQrenwu.People;
import designmodle.decorator.QQrenwu.Shoe;
import designmodle.decorator.frame.ConcreteComponent;
import designmodle.decorator.frame.DecoratorA;
import designmodle.decorator.frame.DecoratorB;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 * @author zy
 * @date 2018-03-04 11:19
 */
public class User {
    public static void main(String[] args) {
//        ConcreteComponent concreteComponent = new ConcreteComponent();
//        DecoratorA a = new DecoratorA();
//        DecoratorB b = new DecoratorB();
//
//        a.setComponent(concreteComponent);
//        b.setComponent(a);
//        b.dosomething();
        //

        showtest();

//        new BufferedReader(new InputStreamReader(new FileInputStream()));

    }

    public static void showtest() {
        P1 p1 = new P1();
        Clothes clothes = new Clothes();
        Shoe shoe = new Shoe();

        clothes.setPeople(p1);
        shoe.setPeople(clothes);

        shoe.show();
    }
}
