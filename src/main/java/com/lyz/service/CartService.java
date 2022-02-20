package com.lyz.service;

import com.lyz.bean.Cart;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  17:27
 */
public interface CartService {

    int addCart(Integer userId,Integer bookId);

    List<Cart> getCartByUserId(Integer userId);

}
