package com.lyz.bean;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Category {
	private int id;

	private String name;

	private int grade; // 分类等级

	private int parent; // 上级分类

	private List<Category> sonCategories; // 子分类的集合

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}


	public Category() {
	}

	public void setName(String name) {
		this.name = name;

	}

	public Category(int id, String name, int grade, int parent) {
		this.id = id;
		this.name = name;
		this.grade = grade;
		this.parent = parent;
	}

	public Category(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
	}




	public void setCategories(List<Category> categories) {
		this.sonCategories = categories;
	}

	@Override
	public String toString() {
		return "Category{" +
				"id=" + id +
				", name='" + name + '\'' +
				", grade=" + grade +
				", parent=" + parent +
				", sonCategories=" + sonCategories +
				'}';
	}
}
