package com.yangyi.wechat;


import java.io.UnsupportedEncodingException;

import org.json.JSONObject;

/**
 * �������������
 * @author ͼ�������
 *
 */
public class AesTest {
	public static void main(String[]a){
		String secret = "c5e75fb58756254e";
		//ͼ����վ�ϵ�apiKey
		String apiKey = "5be0209e3f924e138cd5bdc40249c643";
		//byte[] cmd = "".getBytes("utf-8");//��������"
		String cmd = null;
		try {
			cmd = new String("���".getBytes("utf-8"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(testAes(secret,apiKey,cmd));
	}
	//@Test
	public static String testAes(String secret, String apiKey, String cmd){
		//ͼ����վ�ϵ�secret
		
		//����ܵ�json���
		String data = "{\"key\":\""+apiKey+"\",\"info\":\""+cmd+"\"}";
		//��ȡʱ���
		String timestamp = String.valueOf(System.currentTimeMillis());
		
		//�����Կ
		String keyParam = secret+timestamp+apiKey;
		String key = Md5.MD5(keyParam);
		
		//����
		Aes mc = new Aes(key);
		data = mc.encrypt(data);		
		
		//��װ�������
		JSONObject json = new JSONObject();
		//����ͼ��api
		String result = PostServer.SendPost(json.toString(), "http://www.tuling123.com/openapi/api");
		System.out.println(result);
		return result;
	}
	
}