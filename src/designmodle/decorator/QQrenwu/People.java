package designmodle.decorator.QQrenwu;

import java.util.ArrayList;

/**
 * @author zy
 * @date 2018-03-04 11:23
 */
public abstract class People {
    private String name;
    protected ArrayList<String> cloth;

    public abstract void dress();

    public void show() {
        System.out.println(name + ":");
        for (String c : cloth
                ) {
            System.out.println(c + "\t");
        }
    }
}
