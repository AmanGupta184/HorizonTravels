package com.entity;

public class User {
	private int Id;
	private String FullName;
	private String Email;
	private String Contact;
	private String Password;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int id, String fullName, String email, String contact, String password) {
		super();
		Id = id;
		FullName = fullName;
		Email = email;
		Contact = contact;
		Password = password;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		Contact = contact;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "User [Id=" + Id + ", FullName=" + FullName + ", Email=" + Email + ", Contact=" + Contact + ", Password="
				+ Password + "]";
	}
}
