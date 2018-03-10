package com.company.log4j;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**
 * created by zy on 17-9-20 .
 */
public class Log_one {
    private static Logger logger = Logger.getLogger(Log_one.class);
    private static Logger data = Logger.getLogger("dataLogger");
    static {
        PropertyConfigurator.configure("./src/com/company/log4j/log4j.properties");
    }

    public static void main(String[] args) {
        for (int i = 0; i < 10; i ++){
            data.info(Thread.currentThread().getId()+"this is "+i+"message");
        }


        try {
            int a = 0;
            int b= 5/ 0;
        }catch (Exception e){
            logger.error("this is ",e);
        }
        logger.info("helo");
        logger.debug("123");
        logger.error("yyy");
    }
}
