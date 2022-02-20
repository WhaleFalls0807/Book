package com.lyz.service.impl;

import com.lyz.bean.Book;
import com.lyz.bean.Cart;
import com.lyz.mapper.BookMapper;
import com.lyz.mapper.CartMapper;
import com.lyz.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2022-02-19  15:00
 */

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private BookMapper bookMapper;


    @Override
    public int addCart(Integer userId,Integer bookId) {

        Cart cartByBookId = cartMapper.getCartByBookId(userId,bookId);
        if (ObjectUtils.isEmpty(cartByBookId)){
            Book bookById = bookMapper.getBookById(bookId);
            Cart cart = new Cart();
            cart.setBookId(bookId);
            cart.setUserId(userId);
            cart.setBookName(bookById.getName());
            cart.setBookAva(bookById.getCover());
            cart.setPrice(bookById.getPrice());
            cart.setStore(bookById.getStock());

            return cartMapper.addItem(cartByBookId);
        }else{
            Integer quantity = cartByBookId.getQuantity();
            return  cartMapper.addCartItemCount(userId, bookId, quantity + 1);
        }


    }

    @Override
    public List<Cart> getCartByUserId(Integer userId) {
        return cartMapper.getCartByUserId(userId);

    }
}
