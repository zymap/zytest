public class mytest{
    public static void main(String args[]){
        synchronized (this) {
            System.out.println("hello world");
        }
    }
}
