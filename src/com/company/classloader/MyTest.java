package com.company.classloader;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;

/**
 * @author zy
 * @date 2018-03-10 10:23
 */
public class MyTest {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        new MyTest().Proptest();
    }

    public void CLasstEST() {
        String str = "aaa";
        System.out.println(str.getClass().getClassLoader());

        try {
            Class cl = Class.forName("com.sun.crypto.provider.AESCipher");
            System.out.println(cl.getClassLoader());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        MyTest myTest = new MyTest();
        System.out.println(myTest.getClass().getClassLoader());
    }


    public void Proptest() throws IOException, ClassNotFoundException {
        ClassLoader systemLoader = ClassLoader.getSystemClassLoader();
        System.out.format("系统: %s", systemLoader);

        Enumeration<URL> urlEnumeration = systemLoader.getResources("");
        while (urlEnumeration.hasMoreElements()) {
            System.out.println(urlEnumeration.nextElement());
        }

        System.out.println("===================");
        ClassLoader extensionLoader = systemLoader.getParent();
        System.out.println(extensionLoader);

        System.out.println(System.getProperty("java.ext.dirs"));
        System.out.println(extensionLoader.getParent());


        System.out.println("===================");

        ClassLoader classLoader = Class.forName("com.company.classloader.MyTest").getClassLoader();
        System.out.println(classLoader);

    }
}
