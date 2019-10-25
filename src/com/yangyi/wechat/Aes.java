package com.yangyi.wechat;

import java.security.Key;
import java.security.MessageDigest;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

/**
 * aes�����㷨
 * @author ͼ�������
 *
 */
public class Aes {
	
	private Key key;
	/**
	 * AES CBCģʽʹ�õ�Initialization Vector
	 */
	private IvParameterSpec iv;
	/**
	 * Cipher ���
	 */
	private Cipher cipher;

	/**
	 * ���췽��
	 * @param strKet 
	 * 		��Կ
	 */
	public Aes(String strKey) {
		try {
			this.key = new SecretKeySpec(getHash("MD5", strKey), "AES");
			this.iv = new IvParameterSpec(new byte[] { 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0 });
			this.cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		} catch (final Exception ex) {
			throw new RuntimeException(ex.getMessage());
		}
	}
	
	/**
	 * ���ܷ���
	 * 
	 * ˵��������128λ
	 * 
	 * @return ���ܽ��
	 */
	public String encrypt(String strContent) {
		try {
			byte[] data = strContent.getBytes("UTF-8");
			cipher.init(Cipher.ENCRYPT_MODE, key, iv);
			byte[] encryptData = cipher.doFinal(data);
			String encryptResult = new String(Base64.encodeBase64(
					encryptData), "UTF-8");
			return encryptResult;
		} catch (Exception ex) {
			throw new RuntimeException(ex.getMessage());
		}
	}

	/**
	 * 
	 * @param algorithm
	 * @param text
	 * @return
	 */
	private static byte[] getHash(String algorithm, String text) {
		try {
			byte[] bytes = text.getBytes("UTF-8");
			final MessageDigest digest = MessageDigest.getInstance(algorithm);
			digest.update(bytes);
			return digest.digest();
		} catch (final Exception ex) {
			throw new RuntimeException(ex.getMessage());
		}
	}
}
