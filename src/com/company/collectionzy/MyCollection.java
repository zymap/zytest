package com.company.collectionzy;

import java.util.*;

/**
 * zy on 17-12-19 .
 */
public class MyCollection {
    public static void main(String[] args) {

//        Collections collections = new Collections();




        Collection collection = new Collection() {
            @Override
            public int size() {
                return 0;
            }

            @Override
            public boolean isEmpty() {
                return false;
            }

            @Override
            public boolean contains(Object o) {
                return false;
            }

            @Override
            public Iterator iterator() {
                return null;
            }

            @Override
            public Object[] toArray() {
                return new Object[0];
            }

            @Override
            public Object[] toArray(Object[] a) {
                return new Object[0];
            }

            @Override
            public boolean add(Object o) {
                return false;
            }

            @Override
            public boolean remove(Object o) {
                return false;
            }

            @Override
            public boolean containsAll(Collection c) {
                return false;
            }

            @Override
            public boolean addAll(Collection c) {
                return false;
            }

            @Override
            public boolean removeAll(Collection c) {
                return false;
            }

            @Override
            public boolean retainAll(Collection c) {
                return false;
            }

            @Override
            public void clear() {

            }
        };

    }

    public void testCollections() {
//        Collections.
    }

    public void test() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(1);
        linkedList.add(2);
        linkedList.add(3);
        linkedList.add(0);
        ArrayList arrayList = new ArrayList(linkedList);
        for (Object o : arrayList
                ) {
            System.out.println(o);
        }

        Iterator iterator = linkedList.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }

        Vector vector = new Vector();
        Stack stack = new Stack();

        ArrayList arrayList1 = new ArrayList(10);
        arrayList1.ensureCapacity(5);
        arrayList1.add(1);
        System.out.println(arrayList1.size());
        arrayList1.add(1);
        arrayList1.add(1);
        arrayList1.add(1);
        arrayList1.add(1);
        arrayList1.add(1);
        arrayList1.trimToSize();
        System.out.println(arrayList1.size());
        arrayList1.trimToSize();
        System.out.println(arrayList1.size());
    }
}
