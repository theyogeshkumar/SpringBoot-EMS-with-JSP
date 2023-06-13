package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int emp_id;
private String emp_name;
private long emp_phone;
private String emp_address;
private String emp_role;
@Override
public String toString() {
	return "Employee [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_phone=" + emp_phone + ", emp_address="
			+ emp_address + ", emp_role=" + emp_role + "]";
}
public int getEmp_id() {
	return emp_id;
}
public void setEmp_id(int emp_id) {
	this.emp_id = emp_id;
}
public String getEmp_name() {
	return emp_name;
}
public void setEmp_name(String emp_name) {
	this.emp_name = emp_name;
}
public long getEmp_phone() {
	return emp_phone;
}
public void setEmp_phone(long emp_phone) {
	this.emp_phone = emp_phone;
}
public String getEmp_address() {
	return emp_address;
}
public void setEmp_address(String emp_address) {
	this.emp_address = emp_address;
}
public String getEmp_role() {
	return emp_role;
}
public void setEmp_role(String emp_role) {
	this.emp_role = emp_role;
}
}
