package com.news.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.omg.CORBA.PRIVATE_MEMBER;

public class ConnectionDB {
	private static String driver;
	private static String url;
	private static String username;
	private static String password;
	static {
		ResourceBundle rb = ResourceBundle.getBundle("dbinfo");
		driver = rb.getString("sqlsever_driver");
		url = rb.getString("sqlsever_url");
		username = rb.getString("sqlsever_username");
		password = rb.getString("sqlsever_password");

	}

	public static Connection getConn() throws Exception {

		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;
	}

	/**
	 * JNDI连接数据库 public static Connection getConn() throws Exception{ Context
	 * cxt= new InitialContext(); //找到数据源名称根据名称进行定位java:comp/env是必写的 DataSource
	 * ds= (DataSource)cxt.lookup("java:comp/env/jdbc/test");
	 * 
	 * Connection conn=ds.getConnection(); return conn; }
	 */
	public static void closeConnection(Connection connection, Statement st,
			ResultSet rs) throws SQLException {
		if (rs != null) {
			rs.close();
		}
		if (st != null) {
			st.close();
		}
		if (connection != null) {
			connection.close();
		}
	}
}
