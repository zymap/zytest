package com.company.io.file;

import org.apache.poi.ss.formula.functions.T;

import java.io.*;

/**
 * @author zy
 * @date 2018-03-10 12:56
 */
public class SerializableTest {
    public static void main(String[] args) {
        String url = "../people.txt";

        TT test = new TT();
//        test.setId(10);
//        test.setName("lskdfjlskdjf");
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(url));
            objectOutputStream.writeObject(test);
            objectOutputStream.close();

            ObjectInputStream inputStream = new ObjectInputStream(new FileInputStream(url));
//            TT myTest = (TT) inputStream.readObject();
////            System.out.println(myTest.getIid());
////            System.out.println(myTest.getNname());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}

class TT implements Externalizable {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void writeExternal(ObjectOutput out) throws IOException {
        out.write("helloworld".getBytes());
    }

    @Override
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        System.out.println("read....");
    }
}

class Test implements Serializable {

    private static final long serialVersionUID = 1L;
    private int iid;
    private String nname;

    public void setIid(int iid) {
        this.iid = iid;
    }

    public void setNname(String nname) {
        this.nname = nname;
    }

    public int getIid() {
        return iid;
    }

    public String getNname() {
        return nname;
    }
}

class MyTest implements Serializable {

    private static final long serialVersionUID = 1L;

    private int id;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
