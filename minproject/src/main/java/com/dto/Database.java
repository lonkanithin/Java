package com.dto;

import java.sql.*;

public class Database {

	
	private String url,username,password;
	Connection con=null;

	public Database(String url, String username, String password) throws SQLException {
		this.url = url;
		this.username = username;
		this.password = password;
	}
	
	
	
	public void InsertDetails(Student stu) throws SQLException {
	    String query = "insert into data values(?, ?, ?, ?,?,?,?,?,?)";

	    try (Connection con = DriverManager.getConnection(url, username, password);
	         PreparedStatement statement = con.prepareStatement(query)) {
	        statement.setString(1, stu.getFname());
	        statement.setString(2, stu.getLname());
	        statement.setString(3, stu.getGender());
	        statement.setString(4, stu.getDate());
	        statement.setString(5, stu.getMobile());
	        statement.setString(6, stu.getAmobile());
	        statement.setString(7, stu.getEmail());
	        statement.setString(8, stu.getUname());
	        statement.setString(9, stu.getPass());

	        // Execute the statement to insert the data into the database
	        statement.executeUpdate();
	    }
	}

	public ResultSet checking(String username) throws SQLException {
	    String query = "select * from data where uname = ?";
	    Connection con = DriverManager.getConnection(url, this.username, password);
	    PreparedStatement statement = con.prepareStatement(query);

	    statement.setString(1, username);
	    ResultSet answer = statement.executeQuery();

	    // Note: Do not close the ResultSet, PreparedStatement, and Connection here
	    // They will be closed in the loginServlet method after retrieving the data
	    return answer;
	}


	
}
