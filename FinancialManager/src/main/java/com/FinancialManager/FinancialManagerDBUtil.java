package com.FinancialManager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FinancialManagerDBUtil {
	
	private static boolean IsSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
		public static boolean validate(String username,String password) {
		
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from `financial manager` where Username='"+username+"' and Password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					IsSuccess=true;
				}else {
					IsSuccess=false;
				}
 			}
			catch(Exception e){
				e.printStackTrace();
				
			}
			return IsSuccess;
		}
		
		public static List<FinancialManager> getManager(String userName){

			ArrayList<FinancialManager> Fm = new ArrayList<>();
			
			try{
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from `financial manager` where Username='"+userName+"'";
				rs = stmt.executeQuery(sql);
				
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String Name = rs.getString(2);
					String Email = rs.getString(3);
					String UsernameU = rs.getString(4);
					String PasswordU = rs.getString(5);
					
					FinancialManager F = new FinancialManager(id ,Name ,Email,UsernameU,PasswordU );
					Fm.add(F);
				}
				
				
			}catch (Exception e) {
				
			}
			
			
			return Fm;
		}
		
		
		public static boolean InsertManager(String Name,String Email,String Username,String Password) {
		
		boolean IsSuccess = false;
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="insert into `financial manager` values(0,'"+Name+"','"+Email+"','"+Username+"','"+Password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				IsSuccess= true;
			}
			else { 
				IsSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return IsSuccess;  
		
		}
		
		public static boolean UpdateManager(String id,String Name,String Email,String Username,String Password) {
			
			
			 try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql="update `financial manager` set Name ='"+Name+"',Email='"+Email+"',Username='"+Username+"',Password ='"+Password+"' where id ='"+id+"' ";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					IsSuccess = true;
				} else {
					IsSuccess = false; 
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return IsSuccess;
		}
		public static List<FinancialManager> getFinancialManagerDetails(String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList<FinancialManager> fmanager = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql="select * from `financial manager` where id = '"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String Name = rs.getString(2);
					String Email = rs.getString(3);
					String Username = rs.getString(4);
					String Password = rs.getString(5);
					
					FinancialManager F = new FinancialManager(id,Name,Email,Username,Password);
					fmanager.add(F);
				}
				
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return fmanager;
		}
		
		public static boolean deletemanager(String id) {
			
			int convId = Integer.parseInt(id);
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from `financial manager` where id='"+convId+"'";
				int r = stmt.executeUpdate(sql);
				
				if(r>0) {
					IsSuccess=true;
				}else {
					IsSuccess=false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
			
			return IsSuccess;
		}
		
}
