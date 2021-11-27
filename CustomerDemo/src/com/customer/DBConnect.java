package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	
	//define database property
	private static String url = "jdbc:mysql://localhost:3306/loginpage";
	private static String userName = "root";
	private static String password = "66618";
	private static Connection con;

	
	//define static method
	public static Connection getConnection() {
		//check the connection
		
		try {
			
			//load the driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//get connection
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		//return connection
		return con;
	}
	
}