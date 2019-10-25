package com.yanyi.main;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Vector;

import com.google.gson.JsonArray;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;

public class Read_json {
	public static void main(String args[]) {
		JsonParser parse = new JsonParser(); // ����json������
		try {
			JsonObject json = (JsonObject) parse.parse(new FileReader(
					"weather.json")); // ����jsonObject����
			System.out.println("resultcode:"
					+ json.get("resultcode").getAsInt()); // ��json���תΪΪint�͵����
			System.out.println("reason:" + json.get("reason").getAsString()); // ��json���תΪΪString�͵����

			JsonObject result = json.get("result").getAsJsonObject();
			System.out.println("temperature:"
					+ result.get("total_num").getAsString());
			System.out.println("weather:"
					+ result.get("order_num").getAsString());
			System.out.println("weather:"
					+ result.get("orders").getAsJsonArray().size());
			System.out.println("weather:"
					+ result.get("orders").getAsJsonArray().get(0));
			JsonObject json2 = (JsonObject) result.get("orders")
					.getAsJsonArray().get(0);
			System.out.println("temperature:"
					+ json2.get("total").getAsString());

		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @param jsons
	 *            �ַ�״̬��json,����,����
	 */
	public static String getStringFromJsonSingle1(String jsons, String title) {
		String myresult = "";
		JsonParser parse = new JsonParser(); // ����json������
		try {
			JsonObject json = (JsonObject) parse.parse(jsons);
			if (json.get(title) != null) {
				myresult = json.get(title).toString();
			}
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		}
		return myresult;

	}

	/**
	 * 
	 * @param jsons
	 *            �ַ�״̬��json,����,˫��
	 */
	public static String getStringFromJsonSingle2(String jsons, String title1,
			String title2) {
		String myresult = "";
		JsonParser parse = new JsonParser(); // ����json������
		try {
			JsonObject json = (JsonObject) parse.parse(jsons);
			JsonObject result = json.get(title1).getAsJsonObject();
			if (result.get(title2) != null) {
				myresult = result.get(title2).getAsString();
			}

		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		}

		return myresult;

	}

	/**
	 * 
	 * @param jsons
	 *            �ַ����͵�json
	 * @param title1
	 *            һ���ڵ�
	 * @param title2
	 *            �����ڵ�
	 * @param titles
	 *            ��ڵ㼯������������⡣ * @param titles2 �ļ��ڵ㼯������������⡣
	 * @return
	 */
	public static Vector<String[]> getStringFromJsonArray(String jsons,
			String title1, String title2, String[] titles, String[] titles2) {
		Vector<String[]> myresults = new Vector<String[]>();
		JsonParser parse = new JsonParser(); // ����json������
		try {
			JsonObject json = (JsonObject) parse.parse(jsons);
			JsonObject result = json.get(title1).getAsJsonObject();
			JsonArray json2 = (JsonArray) result.get(title2).getAsJsonArray();
			for (int i = 0; i < json2.size(); i++) {
				String myresult[] = new String[titles.length + titles2.length
						- 1];
				JsonObject result2 = json2.get(i).getAsJsonObject();
				for (int j = 0; j < titles.length; j++) {
					// System.out.println(titles[j]);
					String result3 = "";
					if (!result2.get(titles[j]).isJsonObject()) {
						result3 = result2.get(titles[j]).getAsString();
						if (!result2.get(titles[j]).toString().equals("null")) {
							myresult[j] = result3;
						} else {
							myresult[j] = "";
						}
					} else {
						JsonObject result4 = (JsonObject) result2
								.get(titles[j]);
						// System.out.println(result4.toString());
						for (int k = 0; k < titles2.length; k++) {
							// System.out.println(titles2[k]);
							String result5 = result4.get(titles2[k])
									.getAsString();
							if (!result4.get(titles2[k]).toString()
									.equals("null")) {
								myresult[j + k] = result5;
							} else {
								myresult[j + k] = "";
							}

							// System.out.println((j+k) + "=" + myresult[j+k]);
						}
					}

				}
				myresults.add(myresult);
			}

		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		}

		return myresults;

	}

	/**
	 * 
	 * @param jsons
	 *            �ַ����͵�json
	 * @param title1
	 *            һ���ڵ�
	 * @param title2
	 *            �����ڵ�
	 * @param titles
	 *            ��ڵ㼯������������⡣ * @param titles2 �ļ��ڵ㼯������������⡣
	 * @return
	 */
	public static String[] getStringFromJsonArray_orders(String jsons,
			String title1, String[] titles, String title2, String[] titles2,
			String title3, String[] titles3) {
		Vector<String[]> myresults = new Vector<String[]>();
		JsonParser parse = new JsonParser(); // ����json������
		String results[] = null;
		try {
			JsonObject json = (JsonObject) parse.parse(jsons);
			JsonObject result = json.get(title1).getAsJsonObject();
			JsonArray items = (JsonArray) result.get(title3).getAsJsonArray();// ����������Ϣ
			results = new String[titles.length + titles2.length + items.size()];
			for (int i = 0; i < titles.length; i++) {
				System.out.println(titles[i]);
				if (result.get(titles[i]).toString().equals("null")) {
					results[i] = "";
				} else {
					results[i] = result.get(titles[i]).getAsString();
				}
			}
			JsonObject result2 = result.get(title2).getAsJsonObject();
			for (int i = 0; i < titles2.length; i++) {
				System.out.println(titles2[i]);
				if (result2.get(titles2[i]).toString().equals("null")) {
					results[i + titles.length] = "";
				} else {
					results[i + titles.length] = result2.get(titles2[i])
							.getAsString();
				}

			}

			for (int i = 0; i < items.size(); i++) {
				String items0 = "";
				JsonObject result3 = items.get(i).getAsJsonObject();
				for (int j = 0; j < titles3.length; j++) {
					System.out.println(titles3[j]);
					if (result3.get(titles3[j]) == null
							|| result3.get(titles3[j]).toString()
									.equals("null")) {
						items0 += (j == 0 ? "" : "&&&") + "";
					} else {
						items0 += (j == 0 ? "" : "&&&")
								+ result3.get(titles3[j]).getAsString();
					}
				}
				results[i + titles.length + titles2.length] = items0;
				System.out.println(items0);
			}

			/*
			 * for(int i = 0; i < json2.size(); i++){ String myresult [] = new
			 * String[titles.length+titles2.length-1]; JsonObject result2 =
			 * json2.get(i).getAsJsonObject(); for(int j = 0; j < titles.length;
			 * j++){ //System.out.println(titles[j]); String result3 = "";
			 * if(!result2.get(titles[j]).isJsonObject()){ result3 =
			 * result2.get(titles[j]).getAsString(); myresult[j] = result3;
			 * }else{ JsonObject result4 = (JsonObject) result2.get(titles[j]);
			 * System.out.println(result4.toString()); for(int k = 0; k <
			 * titles2.length; k++){ System.out.println(titles2[k]); String
			 * result5 = result4.get(titles2[k]).getAsString(); myresult[j+k] =
			 * result5; } }
			 * 
			 * } myresults.add(myresult); }
			 */

		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		}

		return results;

	}

	/**
	 * 
	 * @param jsons
	 *            �ַ����͵�json
	 * @param title1
	 *            һ���ڵ�
	 * @param title2
	 *            �����ڵ�
	 * @param titles
	 *            ��ڵ㼯������������⡣ * @param titles2 �ļ��ڵ㼯������������⡣
	 * @return
	 */
	public static String getStringFromJsonArray_picText(String jsons,
			String title1, String title2) {
		String myresults = "";
		JsonParser parse = new JsonParser(); // ����json������
		JsonObject json = (JsonObject) parse.parse(jsons);
		JsonArray items = json.get(title1).getAsJsonArray();
		for (int i = 0; i < items.size(); i++) {
			if (items.get(i).toString().equals("null")) {
			} else {
				String result1 = items.get(i).getAsJsonObject().get(title2)
						.toString();
				result1 = result1.substring(1, result1.length() - 1);
				result1 = result1.replace("\\\"", "\"");
				myresults += (i == 0 ? "" : "\n") + result1;
			}
		}
		return myresults;
	}
}