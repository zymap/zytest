package designmodle.Proxy.frame;

/**
 * @author zy
 * @date 2018-03-04 12:10
 */
public class Proxy extends Subject {

    RealSubject subject;

    @Override
    public void Request() {
        if (subject == null) {
            subject = new RealSubject();
        }
        subject.Request();
        System.out.println("this request");
//        System.out.println();
    }
}
