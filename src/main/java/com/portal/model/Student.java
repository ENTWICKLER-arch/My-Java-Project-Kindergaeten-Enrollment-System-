package com.portal.model;

public class Student {
	private int id;
	private String name;
	private String email;
	private String course;
	private String city;
	private String whatsapp;
	
	
public Student() {
}


	public Student(int id, String name, String email, String course, String city,String whatsapp) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.course = course;
		this.city = city;
		this.whatsapp=whatsapp;
		
	}



public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getCourse() {
	return course;
}


public void setCourse(String course) {
	this.course = course;
}


public String getCity() {
	return city;
}


public void setCity(String city) {
	this.city = city;
}


public String getWhatsapp() {
	return whatsapp;
}


public void setWhatsapp(String whatsapp) {
	this.whatsapp = whatsapp;
}

}
