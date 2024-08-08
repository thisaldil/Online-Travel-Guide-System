package com.FinancialManager;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url="jdbc:mysql://localhost:3306/company";
	private static String Username="root";
	private static String Password="tdgk";
	private static Connection con; 
		
	public static Connection getConnection() {
			
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, Username, Password);
		}
		catch(Exception e){
			System.out.println("Database connection is not success");
		}

		return con;
	
	}

	
	
}
