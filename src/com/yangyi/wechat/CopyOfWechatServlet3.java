package com.yangyi.wechat;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *������������url ��token
 * 
 * @author pamchen-1
 * 
 */
public class CopyOfWechatServlet3 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	private final String token = "happydancer520";
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("��ʼǩ��У��");
	    String signature = request.getParameter("signature");
	    String timestamp = request.getParameter("timestamp");
	    String nonce = request.getParameter("nonce");
	    String echostr = request.getParameter("echostr");
	 
	    ArrayList<String> array = new ArrayList<String>();
	    array.add(signature);
	    array.add(timestamp);
	    array.add(nonce);
	 
	    //����
	    String sortString = sort(token, timestamp, nonce);
	    //����
	    String mytoken = SHA1(sortString);
	    //У��ǩ��
	    if (mytoken != null && mytoken != "" && mytoken.equals(signature)) {
	        System.out.println("ǩ��У��ͨ��");
	        response.getWriter().println(echostr); //������ɹ����echostr��΢�ŷ��������յ���������Ż�ȷ�ϼ�����ɡ�
	    } else {
	        System.out.println("ǩ��У��ʧ�ܡ�");
	    }
	}
	 
	 
	 
	/**
	 * ���򷽷�
	 * @param token
	 * @param timestamp
	 * @param nonce
	 * @return
	 */
	public static String sort(String token, String timestamp, String nonce) {
	    String[] strArray = { token, timestamp, nonce };
	    Arrays.sort(strArray);
	 
	    StringBuilder sbuilder = new StringBuilder();
	    for (String str : strArray) {
	        sbuilder.append(str);
	    }
	 
	    return sbuilder.toString();
	}
	
	 public static String SHA1(String decript) {
	        try {
	            MessageDigest digest = MessageDigest
	                    .getInstance("SHA-1");
	            digest.update(decript.getBytes());
	            byte messageDigest[] = digest.digest();
	            // Create Hex String
	            StringBuffer hexString = new StringBuffer();
	            // �ֽ�����ת��Ϊ ʮ����� ��
	            for (int i = 0; i < messageDigest.length; i++) {
	                String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);
	                if (shaHex.length() < 2) {
	                    hexString.append(0);
	                }
	                hexString.append(shaHex);
	            }
	            return hexString.toString();
	 
	        } catch (NoSuchAlgorithmException e) {
	            e.printStackTrace();
	        }
	        return "";
	    }

}
