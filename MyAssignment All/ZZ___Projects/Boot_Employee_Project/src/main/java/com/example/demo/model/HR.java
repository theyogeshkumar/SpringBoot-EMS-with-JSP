package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class HR {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hr_id;
	private String hr_name;
	private String hr_user;
	private String hr_password;
	@Override
	public String toString() {
		return "HR [hr_id=" + hr_id + ", hr_name=" + hr_name + ", hr_user=" + hr_user + ", hr_password=" + hr_password
				+ "]";
	}
	public int getHr_id() {
		return hr_id;
	}
	public void setHr_id(int hr_id) {
		this.hr_id = hr_id;
	}
	public String getHr_name() {
		return hr_name;
	}
	public void setHr_name(String hr_name) {
		this.hr_name = hr_name;
	}
	public String getHr_user() {
		return hr_user;
	}
	public void setHr_user(String hr_user) {
		this.hr_user = hr_user;
	}
	public String getHr_password() {
		return hr_password;
	}
	public void setHr_password(String hr_password) {
		this.hr_password = hr_password;
	}

}
