package com.yangyi.wechat;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

/**
 * �������յ���΢��xml��������Ϣ����
 * @author pamchen-1
 *
 */
public class ReceiveXmlProcess {
	/**
	 * ����΢��xml��Ϣ
	 * @param strXml
	 * @return
	 */
	public ReceiveXmlEntity getMsgEntity(String strXml){
		ReceiveXmlEntity msg = null;
		try {
			if (strXml.length() <= 0 || strXml == null)
				return null;
			 
			// ���ַ�ת��ΪXML�ĵ�����
			Document document = DocumentHelper.parseText(strXml);
			// ����ĵ��ĸ�ڵ�
			Element root = document.getRootElement();
			// �����ڵ��������ӽڵ�
			Iterator<?> iter = root.elementIterator();
			
			// �������н��
			msg = new ReceiveXmlEntity();
			//���÷�����ƣ�����set����
			//��ȡ��ʵ���Ԫ����
			Class<?> c = Class.forName("Wechat.ReceiveXmlEntity");
			msg = (ReceiveXmlEntity)c.newInstance();//�������ʵ��Ķ���
			while(iter.hasNext()){
				Element ele = (Element)iter.next();
				//��ȡset�����еĲ����ֶΣ�ʵ��������ԣ�
				Field field = c.getDeclaredField(ele.getName());
				//��ȡset������field.getType())��ȡ��Ĳ����������
				Method method = c.getDeclaredMethod("set"+ele.getName(), field.getType());
				//����set����
				method.invoke(msg, ele.getText());
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("xml ��ʽ�쳣: "+ strXml);
			e.printStackTrace();
		}
		return msg;
	}
}
