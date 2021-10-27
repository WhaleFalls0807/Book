package com.lyz.controller;

import com.lyz.bean.Order;
import com.lyz.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  16:25
 */
@Controller
@RequestMapping("/order")
public class OrderServlet {


    @Autowired
    private OrderService orderService;

    @RequestMapping("/toList")
    public String toList(Model model){

        List<Order> allOrders = orderService.getAllOrders();

        model.addAttribute("orders",allOrders);

        return "forward:/WEB-INF/tgls/goodsManage/Order1.jsp";
    }
}
