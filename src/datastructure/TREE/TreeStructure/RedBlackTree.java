package datastructure.TREE.TreeStructure;

/**
 * @author zy
 * @date 2018-01-20 17:01
 */


/*
* there are several reasons for the popularity of red-black trees.
* 1.a red-black tree storing n values has height at most 2logn.
* 2.the add(x) and remove(x) operations on a red-black tree run in O(logn) worst-case time.
* 3.The amortized number of rotations performed during an add(x) or remove(x) operation is constant.
* */

/**
 * lemma:the height of red-black tree with n nodes is at most 2logn.
 */


/**
 * property:(black-height).There are the same number of black nodes on every root to leaf path.
 *          (the sum of the colours on any root to leaf path is the same)
 * property:(no-red-edge).No two red nodes are adjacent.(For any node u,except the root ,
 *           u.colour+u.parent.colour≥1.)
 * property:(left-leaning).At any node u,if u.left is black,then u.right is black.
 *
 *          the reason for maintaining the left-leaning property is that it reduces the number of cases
 *          encountered when updating the tree during add and remove operations.
 * /

/**
 * 红黑树遵循的原则:
 * 1.black-height:从root到叶子节点的黑色节点个数相同
 * 2.no-red-edge:没有两个红色节点是相连的
 * 3.left-leaning:任意一个节点u,如果u的左边是黑的,那u的右边也必须是黑的
 *      (第三个原则是因为这样可以减少在插入或者删除时操作遇到的情况)
 * (4.根节点是黑的)
 *
 * 红黑树特点:
 * 1.n个节点的红黑树的高度最多为2logn
 *
 */

public class RedBlackTree {
    static class Value {
        static void set(int a) {

        }
    }

    private static int size = 0;



    /**
     * red-black tree struct
     */
    private static int BLACK = 1;
    private static int RED = 0;

    static class NODE {
        public NODE left;
        public NODE right;
        public NODE parent;
        public int color;

        private int value;

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }

        NODE() {
            left = right = parent = null;
            color = BLACK;
        }
    }

    private NODE root;

    /**
     * basic operation:
     * flips,pulls,push
     */
    /**
     * 修改的几种操作
     * @param node
     */

    //******************************add opt***********************************

    public void pushBlack(NODE node) {
        node.color--;
        node.left.color++;
        node.right.color++;
    }

    public void pullBlack(NODE node) {
        node.color++;
        node.right.color--;
        node.left.color--;
    }

    public void flipLeft(NODE node) {
        swapColors(node, node.right);
        rotateLeft(node);
    }

    private void swapColors(NODE src, NODE des) {
        int color = src.color;
        src.color = des.color;
        des.color = color;
    }

    private void rotateLeft(NODE node) {
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


    public void flipRight(NODE node) {
        swapColors(node, node.left);
        rotateRight(node);
    }

    public void traverse() {
        RecursionTraverse(root);
    }

    public void RecursionTraverse(NODE node) {

        if (node == null) {
            return;
        }
        System.out.println(node.getValue() + "\t" + node.color);
        RecursionTraverse(node.left);
        RecursionTraverse(node.right);

    }

    private void rotateRight(NODE node) {
        NODE left = node.left;
        left.parent = node.parent;

        if (left.parent != null) {
            if (left.parent.right == node) {
                left = left.parent.right;
            } else {
                left = left.parent.right;
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

    /**
     * why the color of add is red? if it black ,it will influence the red-black tree struct
     *
     * @param value
     */

    public void addValue(int value) {
        NODE node = new NODE();
        node.parent = node.right = node.left = null;
        node.setValue(value);
        node.color = RED;
        boolean add = add(node);
        if (add) {
            addFixup(node);
        } else {
            node = null;
        }
    }

    public void addFixup(NODE node) {
        while (node.color == RED) {
            if (node == root) {
                node.color = BLACK;
                return;
            }

            /**
             * 如果当前节点node是父节点的左边,并且父节点是黑色,并且父节点的右边也是红色,返回
             * 如果当前节点node是父节点的左边,并且父节点是红色,父节点的右边是黑色;或者当前节点node
             *      是父节点的右边,并且父节点的左边是黑色.进行flipleft.
             */
            NODE w = node.parent;
            if (w.left.color == BLACK) {
                flipLeft(w);
                node = w;
                w = node.parent;
            }
            if (w.color == BLACK) {
                return;
            }

            /**
             * 如果w的父节点g是黑色,并且g的右边也是黑色 进行flipright
             * 如果g的右边或者左边(因为w可能在g的左边或右边)是红色,进行pushblack
             */
            NODE g = w.parent;
            if (g.right.color == BLACK) {
                flipRight(g);
                return;
            } else {
                pushBlack(g);
                node = g;
            }
        }
    }

    public boolean add(NODE node) {
        NODE last = findLast(node.getValue());
        node.parent = last;
        return addChild(last, node);
    }

    public boolean addChild(NODE last, NODE newNode) {
        if (last == null) {
            root = newNode;
        } else {
            int com = compare(last.getValue(), newNode.getValue());
            if (com > 0) {
                last.left = newNode;
            } else if (com < 0) {
                last.right = newNode;
            } else {
                return false;
            }
        }
        size++;
        return true;
    }

    public NODE findLast(int value) {
        NODE temp = root, pre = null;
        while (temp != null) {
            pre = temp;
            int com = compare(value, temp.getValue());
            if (com > 0) {
                temp = temp.right;
            } else if (com < 0) {
                temp = temp.left;
            } else {
                return temp;
            }
        }
        return pre;
    }

    public int compare(int t, int t1) {
        return t > t1 ? 1 : t == t1 ? 0 : -1;

    }

    //*******************************add opt over*********************************



    //********************************remove opt**********************************


    public void removeval(int value) {
        NODE node = findLast(value);
        remove(node,value);
    }

    public boolean remove(NODE node,int value) {
        if (node == null || compare(node.getValue(), value) != 0) {
            return false;
        }
        NODE w = node.right;
        if (w == null) {
            w = node;
            node = w.left;
        } else {
            while (w.left != null) {
                w = w.left;
            }
            node.setValue(w.getValue());
            node = w.right;
        }
        splice(w);
        node.color += w.color;
        node.parent = w.parent;
        w = null;
        removeFixup(node);
        return true;
    }

    private void removeFixup(NODE node) {
        while (node.color > BLACK) {
            if (node == root) {
                node.color = BLACK;
            } else if (node.parent.left.color == RED) {
                node = removeFixupCase1(node);
            } else if (node == node.parent.left) {
                node = removeFixupCase2(node);
            } else {
                node = removeFixupCase3(node);
            }
        }
        if (node != root) {
            NODE w = node.parent;
            if (w.right.color == RED && w.left.color == BLACK) {
                flipLeft(w);
            }
        }
    }

    private NODE removeFixupCase1(NODE node) {
        flipRight(node.parent);
        return node;
    }

    private NODE removeFixupCase2(NODE node) {
        NODE w = node.parent;
        NODE v = w.right;
        pullBlack(w);
        flipLeft(w);
        NODE q = w.right;
        if (q.color == RED) {
            rotateLeft(w);
            flipRight(v);
            pushBlack(q);
            if (v.right.color == RED) {
                flipLeft(v);
            }
            return q;
        } else {
            return v;
        }
    }

    private NODE removeFixupCase3(NODE node) {
        NODE w = node.parent;
        NODE v = w.left;
        pullBlack(w);
        flipRight(w);
        NODE q = w.left;
        if (q.color == RED) {
            rotateRight(w);
            flipLeft(v);
            pushBlack(q);
            return q;
        } else {
            if (v.left.color == RED) {
                pushBlack(v);
                return v;
            } else {
                flipLeft(v);
                return w;
            }
        }
    }

    private void splice(NODE node) {
        NODE s, parent;
        if (node.left != null) {
            s = node.left;
        } else {
            s = node.right;
        }

        if (node == root) {
            root = s;
            parent = null;
        } else {
            parent = node.parent;
            if (parent.left == node) {
                parent.left = s;
            } else {
                parent.right = s;
            }
        }

        if (s != null) {
            s.parent = parent;
        }

        size--;
    }
}
