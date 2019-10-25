package com.yangyi.wechat;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

public class getData {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		getDataFromBaidu("","�й�");

	}
	public static String getDataFromBaidu (String type, String title){
		String result = "result";
		  URL u = null;
		  String time = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		try {
			u = new URL("http://route.showapi.com/341-1?showapi_appid=23075&time="+time+"&page=&maxResult=&showapi_sign=32c13bdbfcbb4763aa382a30c5811c52");
		} catch (MalformedURLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	        InputStream in = null;
			try {
				in = u.openStream();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        ByteArrayOutputStream out=new ByteArrayOutputStream();
	        try {
	            byte buf[]=new byte[1024];
	            int read = 0;
	            try {
					while ((read = in.read(buf)) > 0) {
					    out.write(buf, 0, read);
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }  finally {
	            if (in != null) {
	                try {
						in.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	            }
	        }
	        byte b[]=out.toByteArray( );
	        try {
				System.out.println(new String(b,"utf-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return result;
		
	}
	

}
