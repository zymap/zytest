package com.company.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Scanner;

/**
 * created by zy on 17-9-26 .
 */
public class Client {
    public static void main(String[] args) throws IOException {
        Socket socket = new Socket("127.0.0.1",30000);
        InputStream inputStream = socket.getInputStream();
        byte[] bytes = new byte[64];
//        inputStream.read(bytes);
//        System.out.println(new String(bytes));
//        inputStream.close();

        BufferedReader reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        System.out.println(reader.readLine());
//        reader.close();
        Scanner scanner = new Scanner(System.in);
        scanner.nextLine();
        socket.close();
    }
}
