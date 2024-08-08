package com.FinancialManager;

public class FinancialManager {

	private int id;
	private String Name;
	private String Email;
	private String Username;
	private String Password;
	public FinancialManager(int id, String name, String email, String username, String password) {
		
		this.id = id;
		Name = name;
		Email = email;
		Username = username;
		Password = password;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return Name;
	}
	public String getEmail() {
		return Email;
	}
	public String getUsername() {
		return Username;
	}
	public String getPassword() {
		return Password;
	}

	
}
