package com.company.httpclient;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

/**
 * created by zy on 17-9-22 .
 */
public class HttpClient {
    public void sendMessage(String message){
        final CloseableHttpClient client = HttpClients.createDefault();
        final HttpPost httpPost;
//        String URL = "http://47.92.110.231:8888/sldjfklsdjf";
//        String URL = "http://"+Config.HTTP_IP+":"+Config.HTTP_PORT;
//        httpPost = new HttpPost(URL);
        httpPost = new HttpPost();
        httpPost.setEntity(new StringEntity(message, "utf-8"));
        httpPost.setHeader("Content-type", "application/text");

        //执行请求操作，并拿到结果（同步阻塞）

        try {
            CloseableHttpResponse response = null;
            String body = "";

            response = client.execute(httpPost);
            HttpEntity entity = response.getEntity();
            if (entity != null) {
                //按指定编码转换结果实体为String类型
                body = EntityUtils.toString(entity, "utf-8");
            }
            EntityUtils.consume(entity);
            //释放链接
            response.close();
            System.out.println(body);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        new HttpClient().sendMessage("sldjfksdjfsldf");
    }
}
