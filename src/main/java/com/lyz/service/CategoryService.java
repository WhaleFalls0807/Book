package com.lyz.service;

import com.lyz.bean.Book;
import com.lyz.bean.Category;



import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-29  16:42
 */
public interface CategoryService {

    List<Category> getSonCategory(int id);

//    List<Book> getBooksByCategoryId(int categoryId);

    List<Category> getCategoryByGrade(int grade);

    List<Category> getAllCategory();

    int addCategory(String name,String grade,String parent);
}
