package com.db;
import java.sql.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

public class DAOimpl {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/db", "root", "mysql007");
       
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}

