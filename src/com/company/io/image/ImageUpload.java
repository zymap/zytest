//package com.company.io.image;
//
//import javax.imageio.stream.FileImageInputStream;
//import javax.imageio.stream.FileImageOutputStream;
//import java.io.File;
//import java.io.IOException;
//
///**
// * zy on 17-11-16 .
// */
//public class ImageUpload{
//    private static String url = "./src/com/company/image/Firefoxback.png";
//
//
//    public void saveImage(String imagename) throws IOException {
//        File file = new File(imagename);
//        FileImageInputStream inputStream = new FileImageInputStream(file);
//        byte[] bytes = new byte[]
//        inputStream.read();
//
//
//
//        FileImageOutputStream outputStream = new FileImageOutputStream(file);
//        byte[] bytes = new byte[4096];
//        outputStream.write(bytes);
//        outputStream.flush();
//        File file1 = new File(url);
//        if (!file1.exists()) {
//            file1.createNewFile();
//        }
//        FileImageInputStream inputStream = new FileImageInputStream(file);
//        inputStream.read();
//    }
//
//}
