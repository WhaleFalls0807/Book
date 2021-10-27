package com.lyz.bean;

import org.springframework.stereotype.Component;

/**
 * 订单类
 *
 */
@Component
public class Order {
	private int id;
	private String name;
	private int price;
	private int quantity;

	private int total;
	private String user; // 购买的人


	private int bookId;
	private String shou;
	private String Address;
	private String info;
	private String phone;
	private String status;




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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getShou() {
		return shou;
	}

	public void setShou(String shou) {
		this.shou = shou;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Order() {
	}

	public Order(int id, String name, int price, int quantity, int total, String user, int bookId, String shou, String address, String info, String phone, String status) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.total = total;
		this.user = user;
		this.bookId = bookId;
		this.shou = shou;
		Address = address;
		this.info = info;
		this.phone = phone;
		this.status = status;
	}
}
