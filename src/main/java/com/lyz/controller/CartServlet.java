package com.lyz.controller;

import com.lyz.bean.Book;
import com.lyz.bean.Cart;
import com.lyz.mapper.BookMapper;
import com.lyz.mapper.CartMapper;
import com.lyz.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  16:20
 */
@Controller
@RequestMapping("/cart")
public class CartServlet {


    @Autowired
    private CartService cartService;

    @RequestMapping("{userId}/add/{bookId}")
    public String addBookToCart(@PathVariable("userId") Integer userId,
                                @PathVariable("bookId") Integer bookId){

        cartService.addCart(userId,bookId);
        return "cart";
    }

    @RequestMapping("/to/cart")
    public String toCart(@RequestParam("userId") Integer userId, HttpSession httpSession){

        if(StringUtils.isEmpty(userId)){
            return "redirect:/404.jsp";
        }
        List<Cart> cartByUserId = cartService.getCartByUserId(userId);

        httpSession.setAttribute("shoppingCart",cartByUserId);
        return "cart";
    }

    @RequestMapping("/delete/cart/{cartId}")
    public String deleteCartItem(@PathVariable("cartId") Integer cartId){

        return null;
    }
}
