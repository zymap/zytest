package com.company.java_language;

/**
 * zy on 17-12-19 .
 */
public class EqualBean implements Comparable {
    public EqualBean() {
        super();
    }

    @Override
    public int hashCode() {
        return 1;
//        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
    }

    @Override
    public int compareTo(Object o) {
        return 0;
    }
}
