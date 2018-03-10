package datastructure.TREE;

import datastructure.TREE.TreeStructure.BSTree;
import datastructure.TREE.TreeStructure.RBSTree;
import datastructure.TREE.TreeStructure.RedBlackTree;

import java.util.TreeMap;

/**
 * @author zy
 * @date 2018-01-19 22:32
 */
public class TestMyTree {
    public static void main(String[] args) {
//        testBSTreeSerial();
//        System.out.println("==============");
//        testRBSTree();

//        TreeMap map = new TreeMap();
//        map.put()
        testRBTree();
    }

    public static void testRBTree() {
        RedBlackTree redBlackTree = new RedBlackTree();
        for (int i = 1; i < 10; i++) {
            redBlackTree.addValue(i);
        }
        redBlackTree.traverse();

    }



    public static void testRBSTree() {
        RBSTree rbsTree = new RBSTree();
        for (int i = 1; i < 10; i++) {
            rbsTree.add(i);
        }
        rbsTree.BreadthFirstTraverse();
        System.out.println("============");
        rbsTree.traverse();
    }

    public static void testBSTree() {
        BSTree bsTree = new BSTree();
        bsTree.addValue(10);
        bsTree.addValue(2);
        bsTree.addValue(5);
        bsTree.addValue(7);
        bsTree.addValue(18);
        bsTree.addValue(16);
        bsTree.addValue(15);
        bsTree.Recursiontraverse();
        System.out.println(bsTree.depth(2));
//        bsTree.size();
        System.out.println();


//        System.out.println(bsTree.find(19));
//        System.out.println(bsTree.findEQ(19));


        bsTree.BreadthFirstTraverse();

        bsTree.remove(10);
        bsTree.BreadthFirstTraverse();
    }

    public static void testBSTreeSerial() {
        BSTree bsTree = new BSTree();
        for (int i = 1; i < 10; i++) {
            bsTree.addValue(i);
        }

        bsTree.BreadthFirstTraverse();
    }
}
