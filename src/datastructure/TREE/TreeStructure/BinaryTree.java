package datastructure.TREE.TreeStructure;

import com.sun.jmx.remote.internal.ArrayQueue;
import datastructure.TREE.util.BinaryTreeUtil;

import java.util.Stack;

/**
 * @author zy
 * @date 2018-01-19 14:56
 */
public class BinaryTree {
    protected NODE root;
    protected int size;

    public int depth(NODE node) {
        int depth = 0;
        while (node != root) {
            node = node.parent;
            depth++;
        }
        return depth;
    }

    public int Recursionsize(NODE node) {
        NODE root_cp = node;
        if (root_cp == null) return 0;
        return 1 + Recursionsize(root_cp.left) + Recursionsize(root_cp.right);
    }

    public int size() {
        NODE temproot = root,prev = null,next = null;
        int size = 0;
        while (temproot != null) {
            if (prev == temproot.parent) {
                size++;
                if (temproot.left != null) {
                    next = temproot.left;
                }else if (temproot.right != null) next = temproot.right;
                else next = temproot.parent;
            } else if (prev == temproot.left) {
                if (temproot.right != null) {
                    next = temproot.right;
                } else next = temproot.parent;
            } else
                next = temproot.parent;
            prev = temproot;
            temproot = next;
        }
        return size;
    }

    public int height(NODE node) {
        if (node == null) {
            return 0;
        }
        return 1 + BinaryTreeUtil.max(height(node.left),height(node.right));
    }

    public void RecursionTraverse(NODE node) {

        if (node == null) {
            return;
        }
        System.out.println(node.getValue());
        RecursionTraverse(node.left);
        RecursionTraverse(node.right);

    }

    /**
     * test stack traverse
     */
    public void stackTraverse() {
        NODE temproot = root;
        Stack<NODE> stack = new Stack<>();
        NODE node = temproot;

        if (node != null) {

        }
    }

    public void traverse() {
        NODE temproot = root,pre = null,next;
        while (temproot != null) {
            if (pre == temproot.parent) {
                if (temproot.left != null) {
                    next = temproot.left;
                } else if (temproot.right != null) {
                    next = temproot.right;
                } else {
                    next = temproot.parent;
                }
            } else if (pre == temproot.left) {
                if (temproot.right != null) {
                    next = temproot.right;
                } else {
                    next = temproot.parent;
                }
            } else {
                next = temproot.parent;
            }
            pre = temproot;
            System.out.println("traverse is:" + temproot.getValue());
            temproot = next;
        }
    }

    public void BreadthFirstTraverse(){
        ArrayQueue<NODE> q = new ArrayQueue<>(20);
        if (root != null) {
            q.add(root);
        }
        while (q.size() > 0) {
            NODE u = q.remove(0);
            System.out.println("breadthfristTraverse-----"+u.getValue());
            if (u.left != null) {
                q.add(u.left);
            }
            if (u.right != null) {
                q.add(u.right);
            }
        }
    }


    static class NODE {
        protected NODE left;
        protected NODE right;
        protected NODE parent;
        private int value;
        private int priority;

        public int getPriority() {
            return priority;
        }

        public void setPriority(int priority) {
            this.priority = priority;
        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }

        NODE() {
            left = right = parent = null;
        }
    }
}
