package com.company.Enum;

/**
 * @author zy
 * @date 2018-02-06 20:13
 */
public class MyTestEnum {
    public static void main(String[] args) {
        MyTest.ONE.name = "dslfkjsdl";

    }

}

enum MyTest{
    ONE,TWO,THREE;

    public String name;
    private int id;

    public void setId(int id) {
        this.id = id;
    }

    public int getid() {
        return id;
    }
}