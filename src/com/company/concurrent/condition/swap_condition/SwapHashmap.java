package com.company.concurrent.condition.swap_condition;


import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by zy on 17-8-21.
 */
public class SwapHashmap {
    private static ConcurrentHashMap<String,Value> hashMap = new ConcurrentHashMap<>();

    public static void add(String uuid,Value value){
        hashMap.put(uuid,value);
        isFull();
    }

    public static Value getValue(String uuid){
        return hashMap.get(uuid);
    }

    private static void isFull(){
        if (hashMap.size() == 10){
            long currentTime = System.currentTimeMillis();
            Clear clear = new Clear();
            clear.setTime(currentTime);
//            ThreadUtil.Run(clear,"SwapHashmap full clear");
        }
    }

    private static class Clear implements Runnable{
        private long time;

        public void setTime(long time) {
            this.time = time;
        }

        @Override
        public void run() {
            Enumeration<String> enumeration = hashMap.keys();
            while (enumeration.hasMoreElements()){
                String key = enumeration.nextElement();
                Value value = hashMap.get(key);
                long passtime = value.getTime();
                if ((time-passtime)>5000){
                    value.getCondition().signal();
                    hashMap.remove(key);
                }
            }
        }
    }

}
