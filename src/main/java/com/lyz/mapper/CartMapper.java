package com.lyz.mapper;

import com.lyz.bean.Book;
import org.springframework.stereotype.Repository;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  17:03
 */
@Repository
public interface CartMapper {

    int addItem(Book book);


}
