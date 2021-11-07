package com.lyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  16:20
 */
@Controller
@RequestMapping("/cart")
public class CartServlet {



    @RequestMapping("/add/{bookId}")
    public String addBookToCart(@PathVariable("bookId") String bookId){


        return null;
    }
}
