package com.yanyi.main;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.baidu.aip.ocr.AipOcr;

public class PIC_TO_TEXT {

	public static final String APP_ID = "10180378";
	public static final String API_KEY = "0QvUsXYGLg9r30xG5kIZRdVn";
	public static final String SECRET_KEY = "QOUGgCqSZ73SGZG4h8KUM1fcwxKBVIfD";

	public static void main(String[] args) {
		String path = "http://mmbiz.qpic.cn/mmbiz_jpg/icTIhAu0nkiaD3CAe66g1icDhpbcMBvFnPIBicNcy7yb1XdwmWQ5zMVIMAsetncu67XbzQWHoqfQT8eat1UEJiaS9kg/0";
		//String path = "D://aaa.png";
		
		PicText(path);
	}

	public static String PicText(String path) {
		String result = "";
		// ��ʼ��һ��AipOcr
		AipOcr client = new AipOcr(APP_ID, API_KEY, SECRET_KEY);
		// ��ѡ�������������Ӳ���
		client.setConnectionTimeoutInMillis(2000);
		client.setSocketTimeoutInMillis(60000);

		// ��ѡ�����ô����������ַ, http��socket��ѡһ�����߾�����
		/*
		 * client.setHttpProxy("proxy_host", proxy_port); // ����http����
		 * client.setSocketProxy("proxy_host", proxy_port); // ����socket����
		 */
		HashMap<String, String> options = new HashMap<String, String>();
		options.put("detect_direction", "true");
		options.put("language_type", "CHN_ENG");
		// ���ýӿ�

		// JSONObject res = client.basicGeneral(path, new HashMap<String,
		// String>());
		// JSONObject res = client.basicGeneralUrl(path, options);
		//JSONObject basicAccurateGeneral = client.basicAccurateGeneral(path, options);//ͨ������ʶ��
		JSONObject basicAccurateGeneral = client.basicGeneralUrl(path, options);//ͨ������ʶ��
		//JSONObject basicAccurateGeneral = client.webImageUrl(path, options);//����ʶ��
		try {
			result = basicAccurateGeneral.toString(2);
			System.out.println(result);
			result = Read_json.getStringFromJsonArray_picText(result, "words_result", "words");
			System.out.println(result);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
