package com.db;

import java.sql.*;

public class DBConnect {
	private static Connection con;

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveldb", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
