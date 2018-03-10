package designmodle.Proxy.frame;

/**
 * @author zy
 * @date 2018-03-04 12:09
 */
public class RealSubject extends Subject {
    @Override
    public void Request() {
        System.out.println("real request");
    }
}
