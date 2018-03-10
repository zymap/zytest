package com.company.java_language;

import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.StringBufferPool;
import javafx.beans.binding.When;

/**
 * zy on 17-12-3 .
 */
public class StringTest {
    public static void main(String[] args) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuilder stringBuilder = new StringBuilder();

        stringBuffer.append("aaaaa");
        stringBuilder.append("aaaaaa");

//        When.StringConditionBuilder stringConditionBuilder = new When.StringConditionBuilder();
        StringBufferPool.free(new FastStringBuffer());
        StringBufferPool bufferPool = new StringBufferPool();


    }
}
