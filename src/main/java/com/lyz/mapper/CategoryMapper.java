package com.lyz.mapper;

import com.lyz.bean.Book;
import com.lyz.bean.Category;


import java.sql.SQLException;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-29  16:37
 */
public interface CategoryMapper {
    /**
     * 获取所有子分类
     *
     * @return
     */
    List<Category> getSonCategory(int id);

    /**
     * 获取数据库中所有分类
     * @return
     */
    public List<Category> getAllCategory() ;

    /**
     * 通过分类ID得到分类
     * @param id
     * @return
     */
    public Category getCategoryById(int id);

    /**
     * 根据分类等级查找分类
     * @param grade
     * @return
     */
    List<Category> getCategoryByGrade(int grade);

    /**
     * 通过分类Id获取该分类下的所有图书
     * @param
     * @return
     */

    /**
     * 更新分类
     * @param category
     */
    public void updateCategory(Category category);

    /**
     * 添加分类
     * @param category
     * @throws SQLException
     * @throws Exception
     */
    public int addCategory(Category category);

    public int getBooksSizeByCategoryId(int categoryId);

    int getMaxId();
}
