package com.lyz.service.impl;

import com.lyz.bean.Book;
import com.lyz.bean.Category;
import com.lyz.mapper.BookMapper;
import com.lyz.mapper.CategoryMapper;
import com.lyz.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-29  16:45
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Category> getSonCategory(int id) {
        return categoryMapper.getSonCategory(id);
    }

    @Override
    public List<Category> getCategoryByGrade(int grade) {

        return categoryMapper.getCategoryByGrade(grade);
    }

    @Override
    public List<Category> getAllCategory() {
        return categoryMapper.getAllCategory();
    }

    @Override
    public int addCategory(String name,String grade1,String parent1) {

        int id = categoryMapper.getMaxId();
        int grade = Integer.parseInt(grade1);
        int parent = Integer.parseInt(parent1);

        Category category = new Category(id, name, grade, parent);

        return categoryMapper.addCategory(category);
    }

//    @Override
//    public List<Book> getBooksByCategoryId(int categoryId) {
//        Category category = categoryMapper.getCategoryById(categoryId);
//        String categoryName = category.getName();
//        return BookMapper.getBooksByCategoryName(categoryName);
//    }


}
