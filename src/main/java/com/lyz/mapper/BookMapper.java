package com.lyz.mapper;

import com.lyz.bean.Book;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface BookMapper {
	
	/**
	 * 获取数据库中所有图书
	 * @return
	 */
	List<Book> getAllBooks();
	
	/**
	 * 根据book的id查询book
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	Book getBookById(int id);
	
	/**
	 * 根据书名模糊查询书籍
	 * @param name
	 * @return
	 */
	Book getBookByName(String name);

	List<Book> getBooksByCategoryName(String categoryName) ;

	int getBooksSizeByCategoryName(String categoryName);

	/**
	 * 根据书籍ID删除书籍
	 * @param id
	 */
	int deleteBook(int id);
	
	/**
	 * 增加新的书籍
	 * @param book
	 */
	int addBook(Book book);
	
	/**
	 * 修改书籍信息
	 * @param book
	 */
	int updateBook(Book book);


	int getMaxBookId();
	
}
