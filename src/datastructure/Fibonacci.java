package datastructure;

/**
 * @author zy
 * @date 2018-03-10 21:58
 */
public class Fibonacci {
    private static int count = 0;

    private static int init = 1;

    private static int t1 = 0;
    private static int t2 = 0;

    private int value;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public void run(int n) {
       if(n<value) {
           System.out.println(n);
           if (count < 1) {
               t1 = n;
               count++;
               run( t1 + t2);
           }else {
               t2 = t1;
               t1 = n;
               count++;
               run( t1 + t2);
           }
       }
    }

    public void fib() {
        run(init);
    }

    public static void main(String[] args) {
        Fibonacci f = new Fibonacci();
        f.setValue(100);
        f.fib();
    }
}
