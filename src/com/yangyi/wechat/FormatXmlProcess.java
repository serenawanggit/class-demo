package com.yangyi.wechat;

import java.util.Date;
/**
 * ��װ���յ�xml��ʽ���
 * @author pamchen-1
 *
 */
public class FormatXmlProcess {
	/**
	 * ��װ������ķ�����Ϣ
	 * @param to
	 * @param from
	 * @param content
	 * @return
	 */
	public String formatXmlAnswer(String to, String from, String content) {
		StringBuffer sb = new StringBuffer();
		Date date = new Date();
		sb.append("<xml><ToUserName><![CDATA[");
		sb.append(to);
		sb.append("]]></ToUserName><FromUserName><![CDATA[");
		sb.append(from);
		sb.append("]]></FromUserName><CreateTime>");
		sb.append(date.getTime());
		sb.append("</CreateTime><MsgType><![CDATA[text]]></MsgType><Content><![CDATA[");
		sb.append(content);
		sb.append("]]></Content><FuncFlag>0</FuncFlag></xml>");
		return sb.toString();
	}
	/**
	 * ��װͼƬ��ķ�����Ϣ
	 * @param to
	 * @param from
	 * @param content
	 * @return
	 */
	public String formatXmlAnswer_pic(String to, String from, String content) {
		//<xml><ToUserName><![CDATA[gh_6b9b483508fb]]></ToUserName><FromUserName><![CDATA[oNKFi1Djp6EfwDl-JRFRoDiQ3kwc]]></FromUserName><CreateTime>1506158548</CreateTime><MsgType><![CDATA[image]]></MsgType><PicUrl><![CDATA[http://mmbiz.qpic.cn/mmbiz_jpg/icTIhAu0nkiaD3CAe66g1icDhpbcMBvFnPIN7ickqH28TeDaVOcAGckMpSlyTJ7jDDJtb4mKKJTRlQvyomN8xXjgQg/0]]></PicUrl><MsgId>6468901706682937961</MsgId><MediaId><![CDATA[QZ7MmY5tQRd3ZHinTGugLTCsxMTBp9AQCHrY4Cx0A32JmbJbbclqqXUSY4w0fb1C]]></MediaId></xml>
		StringBuffer sb = new StringBuffer();
		Date date = new Date();
		sb.append("<xml><ToUserName><![CDATA[");
		sb.append(to);
		sb.append("]]></ToUserName><FromUserName><![CDATA[");
		sb.append(from);
		sb.append("]]></FromUserName><CreateTime>");
		sb.append(date.getTime());
		sb.append("</CreateTime><MsgType><![CDATA[image]]></MsgType><PicUrl><![CDATA[");
		sb.append(content);
		sb.append("]]></PicUrl><FuncFlag>0</FuncFlag></xml>");
		return sb.toString();
	}
}
