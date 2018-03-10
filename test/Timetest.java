import org.apache.http.util.TextUtils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/**
 * zy on 17-11-20 .
 */
public class Timetest {
    public static void main(String[] args) {
//        String dateline = "1511191167";
//        String datenow = TimeStamp2Date(dateline);
//        System.out.println(datenow);

//        System.out.println(Integer.MAX_VALUE);
//        ArrayList list = new ArrayList(Integer.MAX_VALUE);

//        int a = (2 + 3) >>> 1;
//        System.out.println(a);
test();



    }

    public static void test() {
        int a = 19;
        int hash = Integer.hashCode(a);
        int x = 0x7FFFFFFF;
        System.out.println(Integer.toBinaryString(x).length());
        System.out.println(Integer.toBinaryString(hash&0x7FFFFFFF));
        int index = (hash & 0x7FFFFFFF) % 2;
        System.out.println(index);
    }

    public static String TimeStamp2Date(String timestampString) {
        String formats = "yyyy-MM-dd HH:mm:ss";
        if (TextUtils.isEmpty(formats))
            formats = "yyyy-MM-dd HH:mm:ss";
        Long timestamp = Long.parseLong(timestampString) * 1000;
        String date = new SimpleDateFormat(formats, Locale.CHINA).format(new Date(timestamp));
        return date;
    }
}
