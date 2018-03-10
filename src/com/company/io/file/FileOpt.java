package com.company.io.file;

import com.company.io.FileUrl;

import java.io.*;

/**
 * @author zy
 * @date 2018-03-10 11:05
 */
public class FileOpt {
//    public  static String url = ""

    public static void main(String[] args) {
//        File file = new File("/hadoop");
//        showfile(file);

        System.runFinalization();
        System.gc();


        try {
            readFile(FileUrl.URLA);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static void showfile(File file) {
        if (file.isDirectory()) {
            System.out.println(file.getName()+"-");
            File[] l = file.listFiles();
            for (File f1 : l) {
                if (f1.isDirectory()) {
                    showfile(f1);
                } else {
                    System.out.println(f1.getName());
                }
            }
        } else {
            System.out.println(file.getName());
        }
    }

    public static void readFile(String url) throws IOException {
        File file = new File(url);
        InputStream inputStream = new FileInputStream(file);
        byte[] buffer = new byte[1024];
        int hasread = 0;
        while ((hasread = inputStream.read(buffer)) > 0) {
            System.out.print(new String(buffer, 0, hasread, "utf-8"));
        }
        inputStream.close();
    }

    public static void writeFIle(String message,String url) throws IOException {
        File file = new File(url);
        OutputStream outputStream = new FileOutputStream(file);
        outputStream.write(message.getBytes());
        outputStream.flush();
        outputStream.close();
    }

    public static void readerFile(String url) throws IOException {
        FileReader reader = new FileReader(url);
        BufferedReader reader1 = new BufferedReader(reader);

        String res = "";
        while ((res = reader1.readLine()) != null) {
            System.out.println(res);
//            res = "";
        }
        reader1.close();
    }

    public static void writeFile(String url, String message) throws IOException {
        FileWriter writer = new FileWriter(url);
        BufferedWriter writer1 = new BufferedWriter(writer);

        writer1.write(message);
        writer1.flush();
        writer1.close();

    }
}
