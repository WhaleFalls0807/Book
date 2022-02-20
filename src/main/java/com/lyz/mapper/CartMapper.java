package com.lyz.mapper;

import com.lyz.bean.Book;
import com.lyz.bean.Cart;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  17:03
 */
@Repository
public interface CartMapper {

    int addItem(Cart cart);

    int addCartItemCount(Integer userId,Integer bookId,Integer count);

    List<Cart> getCartByUserId(Integer userId);

    Cart getCartByBookId(Integer userId,Integer bookId);
}
