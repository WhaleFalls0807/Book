package com.lyz.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Book {
	private int id;
	private String name;
	private String author;
	private BigDecimal price;
	private String introduction; // 书本简介
	private int stock; // 书本库存
	private String category; // 书本分类
	private String cover; // 存储书本封面的图片路径
	private String time;

}
