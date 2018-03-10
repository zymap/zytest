package datastructure.TREE.TreeStructure;


import java.util.Random;

/**
 * @author zy
 * @date 2018-01-20 11:30
 */

//treap
//random binary search tree
public class RBSTree extends BSTree{
    private final static int RANDOM_RANGE = 100;

    public boolean Randomremove(int value) {
        NODE node =  findLast(value);
        if (node != null && compare(node.getValue(), value) == 0) {
            trickleDown(node);
            splice(node);
            return true;
        }
        return false;
    }

    public RBSTree serialAdd(int value) {
        this.add(value);
        return this;
    }

    public boolean add(int value) {
        NODE node = new NODE();
        node.setValue(value);
        node.setPriority(rand());
        if (super.add(node)) {
            bubbleUp(node);
            return true;
        }
        return false;
    }

    /*
    * by the priority to consider whether it rotate left or right
    * it like bubble up (gulugulu)
    * */
    private void bubbleUp(NODE node) {
        while (node.parent != null && node.parent.getPriority() > node.getPriority()) {
            if (node.parent.right == node) {
                rotateLeft(node.parent);
            } else {
                rotateRight(node.parent);
            }
        }

        if (node.parent == null) {
            root = node;
        }
    }


    /*
    * on the contrary,it put the node which will be deleted down as a leaf,
    * then remove it.
    * */
    public void trickleDown(NODE node) {
        while (node.left != null || node.right != null) {
            if (node.left == null) {
                rotateLeft(node);
            } else if (node.right == null) {
                rotateRight(node);
            } else if (node.left.getPriority() < node.right.getPriority()) {
                rotateRight(node);
            } else {
                rotateLeft(node);
            }
            if (root == node) {
                root = node.parent;
            }
        }
    }

    private int rand() {
        return new Random().nextInt(RANDOM_RANGE);
    }


    /*
    * the treeNode rotate left
    *
    * @param node happen node
    *
    * first,update the parent of node's right {right_node} to node's parent,
    * then,if the node locate the parent right,
    * right {right_node} is the parent right,otherwise is the parent left.
    * move the right's left to node's right,it hava two situation.
    * update the pointer that the node point parent,because it switch with
    * the right ,the node pointer shoulb point the right.
    * at last,judge the node is root or else.
    * */
    public void rotateLeft(NODE node) {

        NODE right = node.right;
        right.parent = node.parent;
        if (right.parent != null) {
            if (right.parent.left == node) {
                right.parent.left = right;
            } else {
                right.parent.right = right;
            }
        }
        node.right = right.left;
        if (node.right != null) {
            node.right.parent = node;
        }
        node.parent = right;
        right.left = node;
        if (node == root) {
            root = right;
            root.parent = null;
        }
    }

    public void rotateRight(NODE node) {
        NODE left = node.left;
        left.parent = node.parent;
        if (left.parent != null) {
            if (left.parent.left == node) {
                left.parent.left = left;
            } else {
                left.parent.right = left;
            }
        }
        node.left = left.right;
        if (node.left != null) {
            node.left.parent = node;
        }
        node.parent = left;
        left.right = node;
        if (node == root) {
            root = left;
            root.parent = null;
        }

    }

}
