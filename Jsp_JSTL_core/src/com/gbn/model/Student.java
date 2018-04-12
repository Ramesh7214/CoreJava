package com.gbn.model;

import java.util.ArrayList;
import java.util.List;

public class Student {

	private String name;
	private String age;
	private ArrayList<Student> studentList;

	public Student() {
		
		studentList = new ArrayList<Student>();
		studentList.add(new Student("Ram", "28"));
		studentList.add(new Student("Raj","30"));
	}

	public Student(String name, String age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	public List<Student> getStudents() {
		return studentList;
	}

}
