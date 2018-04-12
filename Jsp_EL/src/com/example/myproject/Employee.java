package com.example.myproject;

import java.util.ArrayList;
import java.util.List;

public class Employee {

	private String name;
	private String enumber;
	private int sal;
	
	ArrayList<Employee> list ;
	
	public Employee() {
		list = new ArrayList<>();
		
		list.add(new Employee("Ram", "E418", 50000));
		list.add(new Employee("Raj", "E419", 30000));
		
	}
	
	public Employee(String name, String enumber, int sal) {
		this.name = name;
		this.enumber = enumber;
		this.sal = sal;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnumber() {
		return enumber;
	}

	public void setEnumber(String enumber) {
		this.enumber = enumber;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}
	
	public List<Employee> getEmployees() {
		return list;
	}

}
