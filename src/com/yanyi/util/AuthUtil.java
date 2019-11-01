package com.yanyi.util;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import net.sf.json.JSONObject;
public class AuthUtil {
	public static final String APPID = "wx712d5cf97f82fa6b";
	public static final String APPSECRET = "平台密钥";
	public static final String MCHID = "商家ID";
	public static final String PATERNERKEY = "商家密钥";
	
	
	public static JSONObject doGetJson(String url) throws ClientProtocolException, IOException {
		JSONObject jsonObject = null;
		// 首先初始化HttpClient对象
		DefaultHttpClient client = new DefaultHttpClient();
		// 通过get方式进行提交
		HttpGet httpGet = new HttpGet(url);
		// 通过HTTPclient的execute方法进行发送请求
		HttpResponse response = client.execute(httpGet);
		// 从response里面拿自己想要的结果
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			String result = EntityUtils.toString(entity, "UTF-8");
			jsonObject = jsonObject.fromObject(result);
		}
		// 把链接释放掉
		httpGet.releaseConnection();
		return jsonObject;
	}
}
