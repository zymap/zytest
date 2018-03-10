package com.company.classloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author zy
 * @date 2018-03-10 10:43
 */
public class RunProc extends ClassLoader {
    private byte[] getBytes(String url) {
        File file = new File(url);
        long len = file.length();
        byte[] raw = new byte[(int) len];
        try (FileInputStream fin = new FileInputStream(file)) {
            int r = fin.read(raw);
            if (r != len) {
                throw new IOException("wufaquanbuduqu");
            }
            return raw;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private boolean compile(String javafile) throws IOException {
        System.out.println("compile....."+javafile);

        Process p = Runtime.getRuntime().exec("javac " + javafile);

        try {
            p.waitFor();
        } catch (InterruptedException e) {
            System.out.println(e);
        }
        int ret = p.exitValue();
        return ret == 0;
    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        Class cl = null;

        String fileStub = name.replace(".", "/");
        String javaFilename = fileStub + ".java";
        String classFIlename = fileStub + ".class";
        File javafile = new File(javaFilename);
        File classFile = new File(classFIlename);

        if (javafile.exists() && (!classFile.exists() || javafile.lastModified() > classFile.lastModified())) {
            try {
                if (!compile(javaFilename) || !classFile.exists()) {
                    throw new ClassNotFoundException("classnotfind" + javaFilename);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (classFile.exists()) {
            byte[] raw = getBytes(classFIlename);
            cl = defineClass(name, raw, 0, raw.length);
        }

        if (cl == null) {
            throw new ClassNotFoundException(name);
        }
        return cl;
    }

    public static void main(String[] args) throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        String prog = "com.company.classloader.Hello";
        String[] progArgs = {"aaa", "bbb"};
        RunProc runProc = new RunProc();
        Class<?> clazzz = runProc.loadClass(prog);
        Method main = clazzz.getMethod("main", (new String[0].getClass()));
        Object[] argss = {progArgs};
        main.invoke(null, argss);
    }
}
