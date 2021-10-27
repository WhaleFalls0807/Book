package com.lyz.service;

import com.lyz.bean.Book;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-11  11:18
 */

public interface BookService {

    List<Book> getAllBooks();


    int addBook(String name,String price,String author,String stock,String introduction,String provid,String cover);

    int deleteById(int id);

    Book getBookById(String id);

    int updateBook(String id,String name,String price,String author,String stock,String introduction,String provid,String cover);

}
