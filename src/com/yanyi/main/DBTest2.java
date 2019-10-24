package com.yanyi.main;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.Vector;

import com.microsoft.sqlserver.jdbc.SQLServerException;

public class DBTest2 {
	String foo = "Not Connected";
	int bar = -1;
	String name = "";
	// String password = "";
	private String NO = null;
	private String SO = null;
	private String date = null;
	private String SO2 = null;
	private String client = null;
	private String saler = null;
	private String saler2 = null;
	private String subscription = null;
	private String sale_department = null;
	private String type_payment = null;
	private String type_transport = null;
	private String type_sale = null;
	private String address_transport = null;
	private String type_pack = null;
	private String remark = null;
	/***** 1. ��д��ݿ������Ϣ(�������ݿ�����ҳ) *****/
	// String databaseName = " pPIzuwyegaSnNwmTNGib ";
	// String host = "sqld.duapp.com";
	// String port = "4050";
	// String username = " fEEZZiw3QK1p775SKLthIj7H";// �û���(api key);
	// String password = "U2lu9lchndYksz9kkbkBL4V8jroMkpef";// ����(secret
	// // key)
	// String driverName = "com.mysql.jdbc.Driver";
	// String dbUrl = "jdbc:mysql://";
	// String serverName = host + ":" + port + "/";
	// String connName = dbUrl + serverName + databaseName;
	boolean result = false;
	Connection myconn = null;
	PreparedStatement statement = null;

	public DBTest2() {

	}

	String sql = "";
	String sql_create_table = "";

	/**
	 * ������������
	 * 
	 * @param table
	 *            ������
	 * @param contents
	 *            �������ڿյ����� ����ture, ����ɹ�������ʧ��
	 */
	public boolean add(String data, String table, String[] contents) {

		// String url =
		// "jdbc:mysql://sqld.duapp.com:4050/pPIzuwyegaSnNwmTNGib?characterEncoding=UTF-8";
		// String username = "fEEZZiw3QK1p775SKLthIj7H";
		// String password = "U2lu9lchndYksz9kkbkBL4V8jroMkpef"; // �����������������ݿ�
		// Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// String url4 = data;
		// myconn = DriverManager.getConnection(url4);
		// foo = "Got myconnection " + myconn.toString();
		// Statement stmt = myconn.createStatement();
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				// Vector<String[]> v = select(data, table, new String[] { "*"
				// },
				// new String[] { "*" }, new String[] { "*" });
				// int rows = v.size() + 1;
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				sql = "insert into " + table + " values (";
				for (int i = 0; i < contents.length; i++) {
					sql += "'" + contents[i] + "'";
					if (i < contents.length - 1) {
						sql += ",";
					}
				}
				sql = sql + ")";
				System.out.println(sql);
				result = false;
				stmt.execute(sql);
				result = true;
				System.out.println(result);
				//ResultSet rst = stmt.executeQuery("select * from " + table);
				// rst.next();
			}
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
		return result;
	}
	
	/**
	 * ������������
	 * 
	 * @param table
	 *            ������
	 * @param contents
	 *            �������ڿյ����� ����ture, ����ɹ�������ʧ��
	 */
	public boolean add_vector(String data, String table, Vector<String> contents) {

		// String url =
		// "jdbc:mysql://sqld.duapp.com:4050/pPIzuwyegaSnNwmTNGib?characterEncoding=UTF-8";
		// String username = "fEEZZiw3QK1p775SKLthIj7H";
		// String password = "U2lu9lchndYksz9kkbkBL4V8jroMkpef"; // �����������������ݿ�
		// Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// String url4 = data;
		// myconn = DriverManager.getConnection(url4);
		// foo = "Got myconnection " + myconn.toString();
		// Statement stmt = myconn.createStatement();
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				// Vector<String[]> v = select(data, table, new String[] { "*"
				// },
				// new String[] { "*" }, new String[] { "*" });
				// int rows = v.size() + 1;
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				sql = "insert into " + table + " values (";
				for (int i = 0; i < contents.size(); i++) {
					sql += "'" + contents.get(i) + "'";
					if (i < contents.size() - 1) {
						sql += ",";
					}
				}
				sql = sql + ")";
				System.out.println(sql);
				result = stmt.execute(sql);
				//ResultSet rst = stmt.executeQuery("select * from " + table);
				// rst.next();
			}
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
		return result;
	}
	
	/**
	 * ������������
	 * 
	 * @param table
	 *            ������
	 * @param contents
	 *            �������ڿյ����� ����ture, ����ɹ�������ʧ��
	 */
	public boolean adds(String data, String table, Vector<String[]> contents) {
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			foo = "Got myconnection " + myconn.toString();
			Statement stmt = myconn.createStatement();
			//System.out.println("contents.size()="+contents.size());
			
			String sqls [] = new String[contents.size()/900+1];
			if (myconn != null) {
				for(int x = 0; x < sqls.length; x++){
					String sql = "insert into " + table + " values ";
					for(int j = x*900; j < (contents.size() > (x+1)*900 ? (x+1)*900 : contents.size()); j++){
						
						sql = sql + "(";
						for (int i = 0; i < contents.get(j).length; i++) {
							sql += "'" + contents.get(j)[i] + "'";
							if (i < contents.get(j).length - 1) {
								sql += ",";
							}
						}
						if(j == (contents.size() > (x+1)*900 ? (x+1)*900 : contents.size()) -1){
							sql = sql + ")";
						}else{
							sql = sql + "),";
						}
						
						//stmt.addBatch(sql);
						//ResultSet rst = stmt.executeQuery("select * from " + table);
					}
					sqls[x] = sql;
				}
				
			}
			//System.out.println(sqls.length);
			for(int i = 0; i < sqls.length; i ++){
				System.out.println("��"+i+"��="+sqls[i]);
				result = stmt.execute(sqls[i]);
			}
			
			//stmt.executeBatch();
			//String sql = "INSERT INTO user VALUES(id,?,?,?)";  
	       /* PreparedStatement stmts = myconn.prepareStatement(sql);  
	        int i = stmts.executeUpdate();*/  
			//result = stmt.execute(sql);
			
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
		return result;
	}
	/**
	 * ������������
	 * 
	 * @param table
	 *            ������
	 * @param contents
	 *            �������ڿյ����� ����ture, ����ɹ�������ʧ��
	 */
	public boolean add2(String data, String table,String[] col, String[] contents) {

		// String url =
		// "jdbc:mysql://sqld.duapp.com:4050/pPIzuwyegaSnNwmTNGib?characterEncoding=UTF-8";
		// String username = "fEEZZiw3QK1p775SKLthIj7H";
		// String password = "U2lu9lchndYksz9kkbkBL4V8jroMkpef"; // �����������������ݿ�
		// Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// String url4 = data;
		// myconn = DriverManager.getConnection(url4);
		// foo = "Got myconnection " + myconn.toString();
		// Statement stmt = myconn.createStatement();
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				// Vector<String[]> v = select(data, table, new String[] { "*"
				// },
				// new String[] { "*" }, new String[] { "*" });
				// int rows = v.size() + 1;
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				sql = "insert into " + table + "(";
				for (int i = 0; i < col.length; i++) {
					sql += col[i] ;
					if (i < col.length - 1) {
						sql += ",";
					}else{
						sql += ") ";
					}
				}
				sql += " values (";
				for (int i = 0; i < contents.length; i++) {
					sql += "'" + contents[i] + "'";
					if (i < contents.length - 1) {
						sql += ",";
					}
				}
				sql = sql + ")";
				System.out.println(sql);
				result = stmt.execute(sql);
				ResultSet rst = stmt.executeQuery("select * from " + table);
				// rst.next();
			}
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
		return result;
	}

	/**
	 * ��������ָ��������ӵ���ר��
	 * 
	 * @param table
	 *            ������
	 * @param contents
	 *            �������ڿյ����� ����ture, ����ɹ�������ʧ��
	 *//*
	public String add3(String data, Vector<String> table,
			Vector<String[]> contents1, Vector<String[]> contents,
			Vector<Integer> itemCode) {
		String myresult = "";
		// String url =
		// "jdbc:mysql://sqld.duapp.com:4050/pPIzuwyegaSnNwmTNGib?characterEncoding=UTF-8";
		// String username = "fEEZZiw3QK1p775SKLthIj7H";
		// String password = "U2lu9lchndYksz9kkbkBL4V8jroMkpef"; // �����������������ݿ�
		CallableStatement c = null;

		if (table.size() != contents.size()
				|| contents.size() != contents1.size()
				|| itemCode.size() != contents1.size()) {
			return "������λ��һ������ݲ��ɹ�,�ֱ���:" + table.size() + ","
					+ contents1.size() + "," + contents.size() + ","
					+ itemCode.size() + ",";

		} else {
			try {
				if(data.contains("mysql")){
					Class.forName("com.mysql.jdbc.Driver");
				}else{
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				}
				String url4 = data;
				myconn = DriverManager.getConnection(url4);
				myconn.setAutoCommit(false);
				DriverManager
						.registerDriver(new sun.jdbc.odbc.JdbcOdbcDriver());
				// �����洢��̵Ķ��� insert into OITM (ItemCode, ItemName, FrgnName)
				// values('12546','02','561');
				//int itemCode2 = Transaction.getTransaction_AntoGetNextKey(
				//		myconn, "17", "Y");
				if (myconn != null) {
					Statement stmt = myconn.createStatement();
					for (int x = 0; x < table.size(); x++) {

						// Vector<String[]> v = select(data, table, new
						// String[]{"*"},
						// new String[]{"*"}, new String[]{"*"});
						// int rows = v.size() + 1;
						foo = "Got myconnection " + myconn.toString();

						sql = "insert into " + table.get(x) + "(";
						for (int i = 0; i < contents1.get(x).length; i++) {
							if (contents1.get(x)[i].equals("DocEntry")) {
								contents.get(x)[i] = itemCode2 + "";
							}
							sql += contents1.get(x)[i];
							if (i < contents.get(x).length - 1) {
								sql += ",";
							}
						}

						sql += ") values (";
						for (int i = 0; i < contents.get(x).length; i++) {
							sql += "'" + contents.get(x)[i] + "'";
							if (i < contents.get(x).length - 1) {
								sql += ",";
							}
						}
						sql = sql + ")";
						sql = sql.replace(",,", ",");
						sql = sql.replace(",'****'", "");
						sql = sql.replace("****,", "");
						System.out.println(sql);
						result = stmt.execute(sql);
					}
					myresult = Transaction.getTransaction(myconn, "17", "A", 1,
							"Docentry", itemCode.get(0));
					// ResultSet rst = stmt.executeQuery("select * from " +
					// table);

					if (!myresult.equals("����OK")) {
						myconn.rollback();
					} else {
						myconn.commit();
					}
				}
			}
			// �������������쳣
			catch (ClassNotFoundException cnfex) {
				System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
				cnfex.printStackTrace();
				return "װ�� JDBC/ODBC �����ʧ�ܡ�";
			}
			// ����������ݿ��쳣
			catch (SQLException sqlex) {
				System.err.println("�޷�������ݿ�");
				sqlex.printStackTrace();
				return "�޷�������ݿ�";
			} finally {
				try {

					if (myconn != null)
						myconn.close();
					if (c != null) {
						c = null;
					}
				} catch (Exception e) {
					System.out.println("�ر���ݿ����� ��");
					e.printStackTrace();
					return "�ر���ݿ����� ��";
				}
			}

			return myresult;
		}

	}
*/
	/**
	 * ɾ��ĳһ��
	 * 
	 * @param table
	 * @param col
	 * @param value
	 */
	public boolean delete(String data, String table, String col[],
			String value[]) {
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				for (int i = 0; i < col.length; i++) {
					System.out.println(col[i] + "=" + value[i]);
					sql = "delete from " + table + " where " + col[i] + " = '"
							+ value[i] + "'";
					// sql = sql + ")";
					System.out.println(sql);
					result = stmt.execute(sql);
				}

			}
			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
	}

	/**
	 * �����ݱ�
	 * 
	 * @param table
	 * @param col1
	 *            [] ����λҪ��ĵ��С�col1 = value1
	 * @param value1
	 *            []
	 * @param col2
	 *            [] Ҫ��ĵ���ݡ�col�� = value��
	 * @param value2
	 *            []
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public boolean update(String data, String table, String col1[],
			String value1[], String col2[], String value2[]) throws UnsupportedEncodingException {
		try {
			String cols = "";
			Vector<String[]> vs = null;
			if (col2[0].equals("*")) {
				vs = select2(data, "select * from " + table,
						true);

				for (int i = 0; i < vs.get(0).length; i++) {
					//System.out.println(i);
					if(value2[i].equals("")){
						
					}else{
						if (i == 0) {
							cols += (" set " + vs.get(0)[i] + " = '" + value2[i]
									+ "'");
						} else {
							//System.out.println("����0");
							cols += (", " + vs.get(0)[i] + " = '" + value2[i] + "'");
						}
					}
					
					//System.out.println(cols);
				}
			}
			//System.out.println("col="+ vs.get(0).length);
			String whe = " where ";
			for(int i = 0; i < col1.length; i ++){
				if(i == 0){
					whe +=  col1[i] + " = '"
							+ value1[i] + "' ";
				}else{
					whe += " and "+ col1[i] + " = '"
							+ value1[i] + "' ";
				}
			}
			System.out.println("where="+whe);

			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				
				if (col2[0].equals("*")) {//��Ҫ������е���
					System.out.println("cols="+cols);
					sql = "update " + table + cols;
					sql += " "+ whe;
//					for (int i = 0; i < col1.length; i++) {
//						if(i == 0){
//							sql +=  col1[i] + " = '" + value1[i] + "'";
//						}else{
//							sql += " and "+ col1[i] + " = '" + value1[i] + "'";
//						}
//						System.out.println("update="+sql);
//						
//						result = stmt.execute(sql);
//					}
					result = stmt.execute(sql);
				} else {//ֻ��Ҫ�޸����еļ���
//					String whe = " where ";
//					for(int i = 0; i < col1.length; i ++){
//						if(i == 0){
//							whe +=  col1[i] + " = '"
//									+ value1[i] + "' ";
//						}else{
//							whe += " and "+ col1[i] + " = '"
//									+ value1[i] + "' ";
//						}
//					}
					for (int i = 0; i < col2.length; i++) {
						sql = "update " + table + " set " + col2[i] + " = '"
								+ value2[i] + "' " +whe;
						 //sql = sql + ")";
						System.out.println(sql);
						result = stmt.execute(sql);
					}
				}

			}
			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
	}
	
	/**
	 * �����ݱ�-׷�Ӹ���
	 * 
	 * @param table
	 * @param col1
	 *            [] ����λҪ��ĵ��С�col1 = value1
	 * @param value1
	 *            []
	 * @param col2
	 *            [] Ҫ��ĵ���ݡ�col�� = value��
	 * @param value2
	 *            []
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public boolean update_add(String data, String table, String col1[],
			String value1[], String col2[], String value2[]) throws UnsupportedEncodingException {
		try {
			String cols = "";
			Vector<String[]> vs = null;
			String whe = " where ";
			for(int i = 0; i < col1.length; i ++){
				if(i == 0){
					whe +=  col1[i] + " = '"
							+ value1[i] + "' ";
				}else{
					whe += " and "+ col1[i] + " = '"
							+ value1[i] + "' ";
				}
			}
			System.out.println("where="+whe);
			if (col2[0].equals("*")) {
				vs = select2(data, "select * from " + table,
						true);

				for (int i = 0; i < vs.get(0).length; i++) {
					//System.out.println(i);
					if(value2[i].equals("")){
						
					}else{
						if (i == 0) {
							cols += (" set " + vs.get(0)[i] + " = '" + "((select "+vs.get(0)[i]+" from "+table+" "+whe+" )" + value2[i]
									+ "')");
						} else {
							//System.out.println("����0");
							cols += (", " +  vs.get(0)[i] + " = '" + "((select "+vs.get(0)[i]+" from "+table+" "+whe+" )" + value2[i]
									+ "')");
						}
					}
					
					//System.out.println(cols);
				}
			}
			//System.out.println("col="+ vs.get(0).length);
			

			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				
				if (col2[0].equals("*")) {//��Ҫ������е���
					System.out.println("cols="+cols);
					sql = "update " + table + cols;
					sql += " "+ whe;
					result = stmt.execute(sql);
				} else {//ֻ��Ҫ�޸����еļ���
					for (int i = 0; i < col2.length; i++) {
						sql = "update " + table + " set " + col2[i] + " = "
								+ "((select isnull("+col2[i]+",'') from "+table+" "+whe+" )+'" + value2[i] + "') " +whe;
						 //sql = sql + ")";
						System.out.println("sql="+sql);
						result = stmt.execute(sql);
					}
				}

			}
			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
	}
	
	/**
	 * �����ݱ�-ͷ��β������
	 * 
	 * @param table
	 * @param col1
	 *            [] ����λҪ��ĵ��С�col1 = value1
	 * @param value1
	 *            []
	 * @param col2
	 *            [] Ҫ��ĵ���ݡ�col�� = value��
	 * @param value2
	 *            []
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public boolean update2(String data, String table, String col1[],
			String value1[], String col2[], String value2[]) throws UnsupportedEncodingException {
		try {
			String cols = "";
			Vector<String[]> vs = null;
			if (col2[0].equals("*")) {
				vs = select2(data, "select * from " + table,
						true);
				for (int i = 1; i < vs.get(0).length-1; i++) {
					//System.out.println(i);
					if (i == 1) {
						cols += (" set " + vs.get(0)[i] + " = '" + value2[i-1]
								+ "'");
					} else {
						//System.out.println("����0");
						cols += (", " + vs.get(0)[i] + " = '" + value2[i-1] + "'");
					}
					//System.out.println(cols);
				}
			}
			//System.out.println("col="+ vs.get(0).length);
			String whe = " where ";
			for(int i = 0; i < col1.length; i ++){
				if(i == 0){
					whe +=  col1[i] + " = '"
							+ value1[i] + "' ";
				}else{
					whe += " and "+ col1[i] + " = '"
							+ value1[i] + "' ";
				}
			}
			System.out.println("where="+whe);

			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				
				if (col2[0].equals("*")) {//��Ҫ������е���
					System.out.println("cols="+cols);
					sql = "update " + table + cols;
					sql += " "+ whe;
//					for (int i = 0; i < col1.length; i++) {
//						if(i == 0){
//							sql +=  col1[i] + " = '" + value1[i] + "'";
//						}else{
//							sql += " and "+ col1[i] + " = '" + value1[i] + "'";
//						}
//						System.out.println("update="+sql);
//						
//						result = stmt.execute(sql);
//					}
					result = stmt.execute(sql);
				} else {//ֻ��Ҫ�޸����еļ���
//					String whe = " where ";
//					for(int i = 0; i < col1.length; i ++){
//						if(i == 0){
//							whe +=  col1[i] + " = '"
//									+ value1[i] + "' ";
//						}else{
//							whe += " and "+ col1[i] + " = '"
//									+ value1[i] + "' ";
//						}
//					}
					for (int i = 0; i < col2.length; i++) {
						sql = "update " + table + " set " + col2[i] + " = '"
								+ value2[i] + "' " +whe;
						 //sql = sql + ")";
						System.out.println(sql);
						result = stmt.execute(sql);
					}
				}

			}
			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
	}

	/**
	 * 
	 * @param data
	 *            ��ݿ�
	 * @param sql
	 *            ���
	 * @return
	 */
	public boolean update2(String data, String sql) {
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			if (myconn != null) {
				// foo = "Got myconnection " + myconn.toString();
				// Statement stmt = myconn.createStatement();
				// for (int i = 0; i < col1.length; i++) {
				// sql = "update " + table + " set " + col2[i] + " = '"
				// + value2[i] + "' where " + col1[i] + " = '"
				// + value1[i] + "'";
				// // sql = sql + ")";
				// result = stmt.execute(sql);
				foo = "Got myconnection " + myconn.toString();
				Statement stmt = myconn.createStatement();
				System.out.println(sql);
				result = stmt.execute(sql);

			}

			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return false;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return false;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return false;
			}
		}
	}
/*	
	*//**
	 * 
	 * @param data
	 *            ��ݿ�
	 * @param sql
	 *            ���
	 * @return
	 *//*
	public String sql(String data, String sql, int DocEntry) {
		String myresult = "";
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			myconn.setAutoCommit(false);
			if (myconn != null) {
				// foo = "Got myconnection " + myconn.toString();
				// Statement stmt = myconn.createStatement();
				// for (int i = 0; i < col1.length; i++) {
				// sql = "update " + table + " set " + col2[i] + " = '"
				// + value2[i] + "' where " + col1[i] + " = '"
				// + value1[i] + "'";
				// // sql = sql + ")";
				// result = stmt.execute(sql);
				foo = "Got myconnection " + myconn.toString();
				PreparedStatement  stmt = myconn.prepareStatement(sql);
				System.out.println(sql);
				if(sql.contains("select * into KD900.dbo.#tmpStudent")){
					int b = stmt.executeUpdate();
					System.out.println("select *  into #tmpStudent:" + b);
				}else{
					result = stmt.execute();
				}
				
				myresult = Transaction.getTransaction(myconn, "20", "A", 1,
						"Docentry", DocEntry);
				//stmt.e
				
				//myresult = result + "";
			}
			if (!myresult.equals("����OK")) {
				myconn.rollback();
			} else {
				myconn.commit();
			}
			

			return myresult;
		}
		// �������������쳣
		catch (SQLServerException cnfexs) {
			System.err.println("SQLServerException");
			cnfexs.printStackTrace();
			return cnfexs.getMessage();
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return cnfex.getMessage();
		}
		
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return sqlex.getMessage();
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return e.getMessage();
			}
		}
	}*/

	/**
	 * ��ѯ��ݱ� *
	 * 
	 * @param table
	 * @param col1
	 *            []Ҫ�õ����С������� *����ʾȫ��
	 * @param col
	 *            ��[] Ҫ��ѯ���б��
	 * @param value
	 *            []��Ҫ��ѯ����ֵ
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public Vector<String[]> select(String data, String table, String col1[],
			String col[], String value[]) throws UnsupportedEncodingException {
		Vector<String[]> result = new Vector<String[]>();
		String flog = " = '";
		if (value[0].contains("%")) {
			flog = " like '";
		}
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			foo = "Got myconnection " + myconn.toString();
			Statement stmt = myconn.createStatement();
			if (myconn != null) {
				if (col1[0].equals("*")) {// ���ҷ������ȫ����
					if (col[0].equals("*")) {// ����ȫ����ȫ��
						sql = "select " + "*" + " from " + table;
						// sql = sql + ")";
						System.out.println(sql);
						ResultSet rst = stmt.executeQuery(sql);
						int colum = rst.getMetaData().getColumnCount();
						while (rst.next()) {
							String[] contents = new String[colum];
							for (int j = 0; j < colum; j++) {
								contents[j] = rst.getString(j + 1);
							}
							result.add(contents);
						}
					} else if (!col[0].equals("*")) {// ������������ȫ��
						String sql2 = " where ";
						for (int k = 0; k < col.length; k++) {
							if (value[k] == null || value[k].equals("")) {

								continue;
							}
							sql2 = sql2 + " " + col[k] + flog + value[k] + "'";
							if (k < col.length - 1) {
								sql2 = sql2 + " and ";
							}
						}
						System.out.println(sql2);
						if (sql2.endsWith("and ")) {// ��and����
							sql2 = sql2.substring(0, sql2.length() - 5);
						}
						if (sql2.endsWith("where ")) {// ��and����
							sql2 = sql2.substring(0, sql2.length() - 7);
						}
						sql = "select " + "*" + " from " + table + sql2;
						// sql = sql + ")";
						System.out.println(sql);
						ResultSet rst = stmt.executeQuery(sql);
						int colum = rst.getMetaData().getColumnCount();
						while (rst.next()) {
							String[] contents = new String[colum];
							for (int j = 0; j < colum; j++) {
								contents[j] = rst.getString(j + 1);
							}
							result.add(contents);
						}
					}

				} else if (!col1.equals("*")) {// ���ҵ���
					if (col[0].equals("*")) {
						String sql1 = "";
						for (int j = 0; j < col1.length; j++) {
							if (j == col1.length - 1) {
								sql1 += col1[j];
							} else {
								sql1 += col1[j] + ",";
							}

						}
						String sql = "select " + sql1 + " from " + table;
						System.out.println(sql);
						ResultSet rst = stmt.executeQuery(sql);
						int colum = rst.getMetaData().getColumnCount();

						while (rst.next()) {
							String[] contents = new String[colum];
							for (int j = 0; j < colum; j++) {
								contents[j] = rst.getString(j + 1);
							}
							result.add(contents);
						}

					} else if (!col[0].equals("*")) {// ���Ҷ�������ĳ��
						String sql2 = "";

						for (int i = 0; i < col1.length; i++) {
							if (i == 0) {
								sql2 += col1[i];
							} else {
								sql2 += "," + col1[i];
							}
						}
						sql = "select " + sql2 + " from " + table + " where ";
						for (int i = 0; i < col.length; i++) {
							String sql1 = col[i] + " = '" + value[i] + "'";
							if (i == 0) {
								sql += sql1;
							} else {
								sql += " and " + sql1;
							}

						}
						System.out.println("���Ҷ��������У�" + sql);
						ResultSet rst = stmt.executeQuery(sql);
						int colum = rst.getMetaData().getColumnCount();
						while (rst.next()) {
							String[] contents = new String[colum];
							for (int j = 0; j < colum; j++) {
								contents[j] = new String(rst.getString(j + 1).getBytes("ISO8859-1"),"UTF-8");
							}
							result.add(contents);
						}
						// for (int i = 0; i < col1.length; i++) {
						// System.out.println(col[0] + "=" + value[0]);
						// sql = "select " + col1[i] + " from " + table
						// + " where " + col[0] + " = '" + value[0] + "'";
						// // sql = sql + ")";
						// System.out.println(sql);
						// ResultSet rst = stmt.executeQuery(sql);
						// int colum = rst.getMetaData().getColumnCount();
						// while (rst.next()) {
						// String[] contents = new String[colum];
						// for (int j = 0; j < colum; j++) {
						// contents[j] = rst.getString(j + 1);
						// }
						// result.add(contents);
						// }
						// // result.addAll((Collection<? extends String[]>)
						// // rst.getArray(1));
						// }
					}

				}
			}

			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return result;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return result;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return result;
			}
		}
	}

	/**
	 * ���SQL����ѯ
	 * 
	 * @param table
	 * @param col1
	 *            []Ҫ�õ����С������� *����ʾȫ��
	 * @param col
	 *            ��[] Ҫ��ѯ���б��
	 * @param value
	 *            []��Ҫ��ѯ����ֵ b -- �Ƿ�����
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public Vector<String[]> select2(String data, String sql, boolean b) throws UnsupportedEncodingException {
		Vector<String[]> result = new Vector<String[]>();

		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			foo = "Got myconnection " + myconn.toString();
			Statement stmt = myconn.createStatement();
			System.out.println(sql);
			ResultSet rst = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rst.getMetaData();
			int colum = rsmd.getColumnCount();// ������
			if (b) {

				String[] titles = new String[colum];
				for (int i = 1; i <= colum; i++) {
					titles[i - 1] = (rsmd.getColumnName(i));// �������������heads��
				}

				result.add(titles);
			}

			// ���ؼ��ϵ�һ��Ϊ����
			while (rst.next()) {
				String[] contents = new String[colum];
				for (int j = 0; j < colum; j++) {
					if(rst.getString(j + 1) != null){
						if(data.contains("mysql")){
							//contents[j] = new String(rst.getString(j + 1).getBytes("ISO8859-1"),"UTF-8");
							contents[j] = rst.getString(j + 1);
						}else{
							contents[j] = new String(rst.getString(j + 1));
						}
						
						if(contents[j].contains("'")){
							contents[j] = contents[j].replace("'", "��");
						}
					}else{
						contents[j] = "";
					}
					
				}
				result.add(contents);
			}

			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return result;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return result;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return result;
			}
		}
	}
	/*public Vector<String[]> select3(String data, String sql, boolean b) {
		Vector<String[]> result = new Vector<String[]>();

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			foo = "Got myconnection " + myconn.toString();
			Statement stmt = myconn.createStatement();
			System.out.println(sql);
			ResultSet rst = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rst.getMetaData();
			int colum = rsmd.getColumnCount();// ������
			if (b) {

				String[] titles = new String[colum];
				for (int i = 1; i <= colum; i++) {
					titles[i - 1] = (rs(i).name);// �������������heads��
				}

				result.add(titles);
			}

			// ���ؼ��ϵ�һ��Ϊ����
			while (rst.next()) {
				String[] contents = new String[colum];
				for (int j = 0; j < colum; j++) {
					contents[j] = rst.getString(j + 1);
				}
				result.add(contents);
			}

			return result;
		}

		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
			return result;
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
			return result;
		} finally {
			try {

				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
				return result;
			}
		}
	}*/
	public void create(String data, String table_name, String[] contents, int cols) {
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			// Statement stmt2 = myconn.createStatement();
			// stmt2.execute("drop table " + " if exists " + table_name );
			// myconn.close();
			if (myconn != null) {
				Statement stmt = myconn.createStatement();
				if(data.contains("mysql")){
					sql_create_table = "create  table  if not exists " + table_name	+ "(";
				}else{
					sql_create_table = "create  table  " + table_name	+ "(";
				}
				
					
				for (int i = 0; i < contents.length; i++) {

					sql_create_table += contents[i] + " nvarchar("+cols+")";
					// if (i == 0) {
					// sql_create_table += " PRIMARY KEY  ";
					// }
					if (i < contents.length - 1) {
						sql_create_table += ",";
					}
				}
				sql_create_table = sql_create_table + ") ";
				sql_create_table += " ENGINE=InnoDB DEFAULT CHARSET=utf8";
				System.out.print(sql_create_table);
				
				stmt.execute(sql_create_table);
				name = "2";
				sql = sql_create_table;
			}
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
		} finally {
			try {
				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
			}
		}

	}

	public void create2(String data, String table_name, String[] contents) {
		try {
			if(data.contains("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
			}else{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			}
			String url4 = data;
			myconn = DriverManager.getConnection(url4);
			// Statement stmt2 = myconn.createStatement();
			// stmt2.execute("drop table " + " if exists " + table_name );
			// myconn.close();
			if (myconn != null) {
				Statement stmt = myconn.createStatement();
				if(data.contains("mysql")){
					sql_create_table = "create table  if not exists " + table_name + "( ";
				}else{
					sql_create_table = "create table " + table_name + "( ";
				}
				
				for (int i = 0; i < contents.length; i++) {
					
					sql_create_table += contents[i] + " nvarchar(100)";
					// if (i == 0) {
					// sql_create_table += " PRIMARY KEY  ";
					// }
					if (i < contents.length - 1) {
						sql_create_table += ",";
					}
				}
				sql_create_table = sql_create_table + ") ";
				System.out.print(sql_create_table);
				// ENGINE=InnoDB DEFAULT CHARSET=utf8
				sql_create_table += " ENGINE=InnoDB DEFAULT CHARSET=utf8";
				stmt.execute(sql_create_table);
				name = "2";
				sql = sql_create_table;
			}
		}
		// �������������쳣
		catch (ClassNotFoundException cnfex) {
			System.err.println("װ�� JDBC/ODBC �����ʧ�ܡ�");
			cnfex.printStackTrace();
		}
		// ����������ݿ��쳣
		catch (SQLException sqlex) {
			System.err.println("�޷�������ݿ�");
			sqlex.printStackTrace();
		} finally {
			try {
				if (myconn != null)
					myconn.close();
			} catch (Exception e) {
				System.out.println("�ر���ݿ����� ��");
				e.printStackTrace();
			}
		}

	}

	/**
	 * ð������
	 * 
	 * @param args
	 * @return
	 */
	public static long[] bubbleSort(long[] args) {// ð�������㷨
		for (int i = 0; i < args.length - 1; i++) {
			for (int j = i + 1; j < args.length; j++) {
				if (args[i] > args[j]) {
					long temp = args[i];
					args[i] = args[j];
					args[j] = temp;
				}
			}
		}
		return args;
	}

}
