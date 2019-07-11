package com.busBooking.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connecttion {
	public static Connection getConnection() {
		String userName = "root";
		String password = "123123";
		String connectionURL = "jdbc:mysql://localhost:3306/dbbookingbusticker?useUnicode=true&characterEncoding=UTF-8&useFastDateParsing=false";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(connectionURL, userName, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}
}
