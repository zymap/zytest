package datastructure.TREE.TreeStructure;

/**
 * @author zy
 * @date 2018-01-19 15:59
 */
public class BSTree extends BinaryTree {
    public int findEQ(int t) {
        NODE node = root;
        while (node != null) {
            int compare = compare(t, node.getValue());
            if (compare < 0) {
                node = node.left;
            } else if (compare > 0) {
                node = node.right;
            }else
                return node.getValue();
        }
        return this.hashCode();
    }

    public int find(int t) {
        NODE node = root, z = null;
        while (node != null) {
            int comp = compare(t, node.getValue());
            if (comp < 0) {
                z = node;
                node = node.left;
            } else if (comp > 0) {
                node = node.right;
            }else
                return node.getValue();
        }
        return z == null ? null : z.getValue();
    }

    public boolean addValue(int value) {
        NODE node = new NODE();
        node.setValue(value);
        return add(node);
    }

    protected boolean add(NODE node) {
        NODE last = findLast(node.getValue());
        node.parent = last;
        return addChild(last, node);
    }

    public int depth(int value) {
        NODE node = findLast(value);
        return super.depth(node);

    }

    public void Recursiontraverse() {
        super.RecursionTraverse(this.root);
    }

    protected boolean addChild(NODE node, NODE newnode) {
        if (node == null) {
            root = newnode;
        } else {
            int com = compare(node.getValue(), newnode.getValue());
            if (com < 0) {
                node.right = newnode;
            } else if (com > 0) {
                node.left = newnode;
            } else {
                return false;
            }
        }
        size++;
        return true;

    }

    protected NODE findLast(int value) {
        NODE temp = root, pre = null;
        while (temp != null) {
            pre = temp;
            int com = compare(value, temp.getValue());
            if (com < 0) {
                temp = temp.left;
            } else if (com > 0) {
                temp = temp.right;
            } else {
                return temp;
            }
        }
        return pre;
    }

    public void remove(int val) {

        NODE node = findLast(val);
        if (node.left == null || node.right == null) {
            splice(node);
            node = null;
        } else {
            NODE right = node.right;
            while (right.left != null) {
                right = right.left;
            }
            node.setValue(right.getValue());
            splice(right);
            right = null;
        }
    }

    public void splice(NODE node) {
        NODE s, parent;
        if (node.left != null) {
            s = (NODE) node.left;
        } else {
            s = (NODE) node.right;
        }

        if (node == root) {
            root = s;
            parent = null;
        } else {
            parent = (NODE) node.parent;
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

    public int compare(int t, int t1) {
        return t > t1 ? 1 : t == t1 ? 0 : -1;

    }
}
