package com.lyz.service.impl;

import com.lyz.bean.Book;
import com.lyz.mapper.BookMapper;
import com.lyz.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-11  11:19
 */
@Service
public class BookServiceImpl implements BookService {

    SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
    java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
    String time = formatter.format(date);

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Book> getAllBooks() {
        return bookMapper.getAllBooks();
    }

    @Override
    public int addBook(String name,String price,String author,String stock,String introduction,String provid,String cover) {
        int id = bookMapper.getMaxBookId() + 1;
        int priceInt = Integer.parseInt(price);
        int stockInt = Integer.parseInt(stock);


        Book book1 = bookMapper.getBookByName(name);
        if(book1 == null) {

            Book book = new Book(id, name, author, priceInt, introduction, stockInt, provid, cover, time);
            return bookMapper.addBook(book);
        }

        book1.setStock(book1.getStock() + 1);
        return 0;

    }

    @Override
    public int deleteById(int id) {
        return bookMapper.deleteBook(id);
    }

    @Override
    public Book getBookById(String id) {
        int idInt = Integer.parseInt(id);

        return bookMapper.getBookById(idInt);
    }

    @Override
    public int updateBook(String id,String name, String price, String author, String stock, String introduction, String provid, String cover) {

        int idInt = Integer.parseInt(id);
        int priceInt = Integer.parseInt(price);
        int stockInt = Integer.parseInt(stock);


        Book book = new Book(idInt, name, author, priceInt, introduction, stockInt, provid, cover, time);

        return bookMapper.updateBook(book);
    }

    @Override
    public List<Book> getAllBookByName(String bookName) {
        return bookMapper.getAllBookByName(bookName);
    }


}
