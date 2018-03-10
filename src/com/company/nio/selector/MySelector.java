package com.company.nio.selector;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

/**
 * @author zy
 * @date 2018-02-08 19:14
 */
public class MySelector {
    public static void main(String[] args) throws IOException {

    }

    public static void selectorTest() {
        Selector selector = null;
        try {
            selector = Selector.open();

        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                selector.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
