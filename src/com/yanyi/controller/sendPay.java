package com.yanyi.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.type.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.wxpay.sdk.WXPayUtil;
import com.yanyi.WXPay.WXPayConfig;
import com.yanyi.util.AuthUtil;
import com.yanyi.util.HttpRequest;
import com.yanyi.util.JsonUtil;

@Controller
@RequestMapping("/pay")
public class sendPay {

    private WXPayConfig config;
	
	@ResponseBody
	@RequestMapping("/lesson")
	public String lesson(HttpServletRequest request,String code){
		try {
			//页面获取openId接口
			String getopenid_url = "https://api.weixin.qq.com/sns/oauth2/access_token";
			String  param = "appid=wxc19662653e7edcd4&secret=987458afeb1b9a77d212243ca71b4885&code="+code+"&grant_type=authorization_code";
			//向微信服务器发送get请求获取openIdStr
			String openIdStr = HttpRequest.sendGet(getopenid_url, param);
//			JSONObject json = JSON.parseObject(openIdStr);//转成Json格式
			Map<String, String> jsonMap = JsonUtil.json2Object(openIdStr, Map.class);
			String openId = jsonMap.get("openid");//获取openId
			System.out.println("openId:" + openId);
			
			//拼接统一下单地址参数
			Map<String, String> paraMap = new HashMap<String, String>();
			//获取请求ip地址
			String ip = request.getHeader("x-forwarded-for");
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getHeader("Proxy-Client-IP");
		    }
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getHeader("WL-Proxy-Client-IP");
		    }
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getRemoteAddr();
		    }
		    if(ip.indexOf(",")!=-1){
		    	String[] ips = ip.split(",");
		    	ip = ips[0].trim();
		    }
		    String appId = "wxc19662653e7edcd4";
		    String apiSecret = "987458afeb1b9a77d212243ca71b4885";
		    
			paraMap.put("appid", appId);  
			paraMap.put("body", "OnlineEducation");  
			paraMap.put("mch_id", "1561042561");  
			paraMap.put("nonce_str", WXPayUtil.generateNonceStr());  
			paraMap.put("openid", openId);
			paraMap.put("out_trade_no", "800002");//订单号
			paraMap.put("spbill_create_ip", ip);
			paraMap.put("total_fee","1");
			paraMap.put("trade_type", "JSAPI");  
			paraMap.put("notify_url","http://wangfang.51vip.biz/classDemo/pay/notify");// 此路径是微信服务器调用支付结果通知路径随意写
			String sign = WXPayUtil.generateSignature(paraMap, apiSecret);
			paraMap.put("sign", sign);
			String xml = WXPayUtil.mapToXml(paraMap);//将所有参数(map)转xml格式
			System.out.println("xml:" + xml);
						
			// 统一下单 https://api.mch.weixin.qq.com/pay/unifiedorder
			String unifiedorder_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
	
			String xmlStr = HttpRequest.sendPost(unifiedorder_url, xml);//发送post请求"统一下单接口"返回预支付id:prepay_id
			System.out.println("xmlStr:" + xmlStr);
			
			//以下内容是返回前端页面的json数据
			String prepay_id = "";//预支付id
			if (xmlStr.indexOf("SUCCESS") != -1) {  
				Map<String, String> map = WXPayUtil.xmlToMap(xmlStr);  
				prepay_id = (String) map.get("prepay_id");  
			}
			System.out.println(prepay_id);
			Map<String, String> payMap = new HashMap<String, String>();
			payMap.put("appId", appId);  
			payMap.put("timeStamp", WXPayUtil.getCurrentTimestamp()+"");  
			payMap.put("nonceStr", WXPayUtil.generateNonceStr());  
			payMap.put("signType", "MD5");  
			payMap.put("package", "prepay_id=" + prepay_id);  
			String paySign = WXPayUtil.generateSignature(payMap, apiSecret);  
			payMap.put("paySign", paySign);
			return JsonUtil.object2Json(payMap);
		} catch (Exception e) {  
			e.printStackTrace();
		}  
		return null;
	}
 
	/**
	 * @Description 微信浏览器内微信支付/公众号支付(JSAPI)
	 * @param request
	 * @param code
	 * @return Map
	 */
	@ResponseBody
	@RequestMapping(value = "orders")
	public String orders(HttpServletRequest request, HttpServletResponse response) {
		try {

			System.out.println(request);
			String openId = (String) request.getSession().getAttribute("openId");
			System.out.println(openId);

			// 拼接统一下单地址参数
			Map<String, String> paraMap = new HashMap<String, String>();
			// 获取请求ip地址
			String ip = request.getHeader("x-forwarded-for");
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
				ip = request.getHeader("Proxy-Client-IP");
			}
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
				ip = request.getHeader("WL-Proxy-Client-IP");
			}
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
				ip = request.getRemoteAddr();
			}
			if (ip.indexOf(",") != -1) {
				String[] ips = ip.split(",");
				ip = ips[0].trim();
			}

			paraMap.put("appid", AuthUtil.APPID); // 商家平台ID
			paraMap.put("body", "纯情小店铺-薯条"); // 商家名称-销售商品类目、String(128)
			paraMap.put("mch_id", AuthUtil.MCHID); // 商户ID
			paraMap.put("nonce_str", WXPayUtil.generateNonceStr()); // UUID
			paraMap.put("openid", openId);
			paraMap.put("out_trade_no", UUID.randomUUID().toString().replaceAll("-", ""));// 订单号,每次都不同
			paraMap.put("spbill_create_ip", ip);
			paraMap.put("total_fee", "1"); // 支付金额，单位分
			paraMap.put("trade_type", "JSAPI"); // 支付类型
			paraMap.put("notify_url", "用户支付完成后，你想微信调你的哪个接口");// 此路径是微信服务器调用支付结果通知路径随意写
			String sign = WXPayUtil.generateSignature(paraMap, AuthUtil.PATERNERKEY);
			paraMap.put("sign", sign);
			String xml = WXPayUtil.mapToXml(paraMap);// 将所有参数(map)转xml格式

			// 统一下单 https://api.mch.weixin.qq.com/pay/unifiedorder
			String unifiedorder_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";

			System.out.println("xml为：" + xml);

			// String xmlStr = HttpRequest.sendPost(unifiedorder_url, xml);//发送post请求"统一下单接口"返回预支付id:prepay_id

			String xmlStr = HttpRequest.httpsRequest(unifiedorder_url, "POST", xml);

			System.out.println("xmlStr为：" + xmlStr);

			// 以下内容是返回前端页面的json数据
			String prepay_id = "";// 预支付id
			if (xmlStr.indexOf("SUCCESS") != -1) {
				Map<String, String> map = WXPayUtil.xmlToMap(xmlStr);
				prepay_id = (String) map.get("prepay_id");
			}

			Map<String, String> payMap = new HashMap<String, String>();
			payMap.put("appId", AuthUtil.APPID);
			payMap.put("timeStamp", WXPayUtil.getCurrentTimestamp() + "");
			payMap.put("nonceStr", WXPayUtil.generateNonceStr());
			payMap.put("signType", "MD5");
			payMap.put("package", "prepay_id=" + prepay_id);
			String paySign = WXPayUtil.generateSignature(payMap, AuthUtil.PATERNERKEY);
			payMap.put("paySign", paySign);
			//将这个6个参数传给前端
			return JsonUtil.object2Json(payMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @Title: callBack
	 * @Description: 支付完成的回调函数
	 * @param:
	 * @return:
	 */
	@RequestMapping("/notify")
	public String callBack(HttpServletRequest request, HttpServletResponse response) {
		// System.out.println("微信支付成功,微信发送的callback信息,请注意修改订单信息");
		InputStream is = null;
		try {

			is = request.getInputStream();// 获取请求的流信息(这里是微信发的xml格式所有只能使用流来读)
			String xml = sendPay.InputStream2String(is);
			Map<String, String> notifyMap = WXPayUtil.xmlToMap(xml);// 将微信发的xml转map
			
			System.out.println("微信返回给回调函数的信息为："+xml);
			
			if (notifyMap.get("result_code").equals("SUCCESS")) {
				String ordersSn = notifyMap.get("out_trade_no");// 商户订单号
				String amountpaid = notifyMap.get("total_fee");// 实际支付的订单金额:单位 分
				BigDecimal amountPay = (new BigDecimal(amountpaid).divide(new BigDecimal("100"))).setScale(2);// 将分转换成元-实际支付金额:元

				/*
				 * 以下是自己的业务处理------仅做参考 更新order对应字段/已支付金额/状态码
				 */
				System.out.println("===notify===回调方法已经被调！！！");
				
			}
			
			// 告诉微信服务器收到信息了，不要在调用回调action了========这里很重要回复微信服务器信息用流发送一个xml即可
			response.getWriter().write("<xml><return_code><![CDATA[SUCCESS]]></return_code></xml>");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) { 
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}
	
    public static String InputStream2String(InputStream is) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = -1;
        while ((len = is.read(buffer)) != -1) {
            baos.write(buffer, 0, len);
        }
        baos.close();
        is.close();
        
        byte[] lens = baos.toByteArray();
        String result = new String(lens,"UTF-8");//内容乱码处理
        
        return result;
    
    }

}
