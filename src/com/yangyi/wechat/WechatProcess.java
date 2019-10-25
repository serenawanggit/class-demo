package com.yangyi.wechat;

import java.io.UnsupportedEncodingException;
import java.util.Vector;

import com.yanyi.main.DBTest2;
import com.yanyi.main.PIC_TO_TEXT;
import com.yanyi.main.datas;

/**
 * ΢��xml��Ϣ���������߼���
 * @author pamchen-1
 *
 */
public class WechatProcess {
	/**
	 * ��������xml����ȡ���ܻظ����ͨ��ͼ�������api�ӿڣ�
	 * @param xml ���յ���΢�����
	 * @return	���յĽ������xml��ʽ��ݣ�
	 */
	public String processWechatMag(String xml){
		/** ����xml��� */
		ReceiveXmlEntity xmlEntity = new ReceiveXmlProcess().getMsgEntity(xml);
		String result = "";
		String type = "";
		String result0 = "";
		result0 = "��ӭ��עС��ѧ�����ˣ�\n";
		result0 += "ʱ����?http://zujl.v228.10000net.cn/time/index.jsp\n";
		result0 += "ÿ�����飺http://zujl.v228.10000net.cn/music/index.jsp\n";
		result0 += "ÿ�ܾ�����http://zujl.v228.10000net.cn/book/index.jsp\n";
		result0 += "�һ���һ������Ĺ��ܣ����ҷ�һ�Ŵ����ֵ�ͼƬ��һ�£�\n";
		result0 += "ѧ���̳ǣ�https://weidian.com/?userid=320497754\n";
		if(xmlEntity.getMsgType().equals("text")){
			type = xmlEntity.getToUserName();
			result = xmlEntity.getContent();
			if(type.equals("gh_ec0ecd007a69")){//С�ֹ��ں�
				String sql = "select * from sab_answer_shep where title like '%"+result+"%'";
				try {
					Vector<String[]> vs = new DBTest2().select2(datas.url_baidu, sql, false);
					if(vs.size() > 0){
						result = vs.get(0)[3];
					}else{
						result = "�ǳ���Ǹ��������������Ҳ�����!\n";
						result = result0;
					}
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			result = new FormatXmlProcess().formatXmlAnswer(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
		}else if(xmlEntity.getMsgType().equals("image")){
			String url = xmlEntity.getPicUrl();
			result = PIC_TO_TEXT.PicText(url);
			result = new FormatXmlProcess().formatXmlAnswer(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
			//result = new FormatXmlProcess().formatXmlAnswer_pic(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
		}else if(xmlEntity.getMsgType().equals("event")){//�¼�
			//subscribe
			if(xmlEntity.getEvent().equals("subscribe")){//��ע
				result = result0;
			}
		
			result = new FormatXmlProcess().formatXmlAnswer(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
			//result = new FormatXmlProcess().formatXmlAnswer_pic(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
		}else if(xmlEntity.getMsgType().equals("voice")){//����
			//subscribe
			result = xmlEntity.getMediaId();
			
			result = new FormatXmlProcess().formatXmlAnswer(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
			//result = new FormatXmlProcess().formatXmlAnswer_pic(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
		}
	/**/
		System.out.println("result2=" + result);
		return result;
		
	}
	
	/*ReceiveXmlEntity xmlEntity = new ReceiveXmlProcess().getMsgEntity(xml);
	//System.out.println("xml=" + xml.substring(xml.indexOf("<Content><![CDATA[")+18, xml.indexOf("]]></Content>") ));
	String result = "";
	
	if("text".endsWith(xmlEntity.getMsgType())){
		//result = new TulingApiProcess().getTulingResult(xmlEntity.getContent());
		//result=AesTest.testAes("","5be0209e3f924e138cd5bdc40249c643","xml=" + xml.substring(xml.indexOf("<Content><![CDATA[")+18, xml.indexOf("]]></Content>") ));
	}
	System.out.println("result=" + result);
	result="С�ֽ������OK";
	//testAes(secret,apiKey,cmd);
	result = new FormatXmlProcess().formatXmlAnswer(xmlEntity.getFromUserName(), xmlEntity.getToUserName(), result);
	System.out.println("result2=" + result);
	//<xml>    <ToUserName><![CDATA[gh_ec0ecd007a69]]></ToUserName>    <FromUserName><![CDATA[oaAWcsxCQolIir8gtAeHzVS1ltQk]]></FromUserName>    <CreateTime>1470715281</CreateTime>    <MsgType><![CDATA[text]]></MsgType>    <Content><![CDATA[�� ]]></Content>    <MsgId>6316674034042629139</MsgId>    <Encrypt><![CDATA[++5eJ0P9Osry+MuVOx4C3/cLYGmDlgqNXkE1psYlHPqaeONIAdNm8S+GmZ6Dbvn727v/lbCudNHFALiRCxF3gx3tsNR5aA6RMypxMpTOXLrHKcXnzgJTbaEqLf+FzGeVn7Eu0hypvevXxMaiVEDCp9Gl3W3jadFxfr7MJlWz8f1rzm2N4MSR/6xPYai7TE/uEgt6TfFot5lMTMzuZLDkbIrFha5swncVE+E+r2Gyn7Fc9VTZrI8yZV4yBi4p6KGzfIyuqLeGXdJcoz1KoVWYXS74ZtMFbwe8OdJQaALNas9NZrbbZiax0T0U8Xcm5a3bRWpgJ+Qs2S1fl+zaQc6GenBeSul1RA6bKEokPfHvrS0nWQzSvfXri/N1e2LmNJ9W9dvjAWK9YwJzksxFxhoIfW/ecBXg5XZQTQBxRk+enrY=]]></Encrypt></xml>
	
	//result = "<xml><ToUserName><![CDATA[oaAWcsxCQolIir8gtAeHzVS1ltQk]]></ToUserName><FromUserName><![CDATA[gh_ec0ecd007a69]]></FromUserName><CreateTime>1470714375939</CreateTime><MsgType><![CDATA[text]]></MsgType><Content><![CDATA[���Ҳ]]></Content><FuncFlag>0</FuncFlag></xml>";
	//System.out.println("xml=" + result.substring(result.indexOf("<Content><![CDATA[")+18, result.indexOf("]]></Content>") ));
	return result;*/
}
