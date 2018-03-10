package com.company.socket;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

/**
 * created by zy on 17-9-26 .
 */
public class Servver {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(30000);
        Socket socket = serverSocket.accept();
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()));
        printWriter.print("sdfsdfsdfsdfsdfsfd");
//        OutputStream outputStream = socket.getOutputStream();
//        String xxx = "qweqweqwe";
//        outputStream.write(xxx.getBytes());
//        outputStream.flush();
        printWriter.flush();
//        printWriter.close();
        Scanner scanner = new Scanner(System.in);
        scanner.nextLine();
        socket.close();
    }
}
