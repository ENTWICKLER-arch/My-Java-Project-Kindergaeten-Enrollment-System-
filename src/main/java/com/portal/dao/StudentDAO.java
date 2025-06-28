package com.portal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.portal.model.*;

public class StudentDAO {
private String jdbcURL =" jdbc:mysql://${{RAILWAY_PRIVATE_DOMAIN}}";
private String jdbcUsername=" root";
private String jdbcPassword="${{MYSQL_ROOT_PASSWORD}}";

private Connection getConnection()throws SQLException{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}
	return
			DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);}
	
	public void insertStudent(Student student) {
		String sql= "INSERT INTO students(name,email,course,city,whatsapp)VALUES(?,?,?,?,?)";
		try (Connection conn = getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)){
			stmt.setString(1,student.getName());
			stmt.setString(2,student.getEmail());
			stmt.setString(3,student.getCourse());
			stmt.setString(4,student.getCity());
			stmt.setString(5,student.getWhatsapp());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			}
		}
	
	
		public List<Student>getAllStudents(){
			List<Student>list = new ArrayList<>();
			String sql = "SELECT * FROM students";
			
			try (Connection conn= getConnection();
					PreparedStatement stmt = conn.prepareCall(sql)){
				ResultSet rs = stmt.executeQuery();
				while(rs.next()) {
					Student student = new Student(
							rs.getInt("id"),
							rs.getString("name"),
							rs.getString("email"),
							rs.getString("course"),
							rs.getString("city"),
							rs.getString("whatsapp")
							);
					list.add(student);
							
				}
			}catch(Exception e) {
				e.printStackTrace();}
			return list;
		}
	}
	
	

