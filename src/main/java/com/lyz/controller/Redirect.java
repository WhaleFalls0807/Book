package com.lyz.controller;

import com.lyz.bean.Order;
import com.lyz.service.OrderService;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-06  21:05
 */
@Controller
@RequestMapping("/to")
public class Redirect {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/addUser")
    public String add(){

        return "forward:/WEB-INF/tgls/agent/agent_add.jsp";
    }

    @RequestMapping("/index")
    public String index(HttpSession httpSession){
        Object user = httpSession.getAttribute("user");
        if(ObjectUtils.isEmpty(user)){
            return "redirect:/login.jsp";
        }
        return "index";
    }

    @RequestMapping("/order/{userId}")
    public String toOrder(@PathVariable("userId") int userId,HttpSession httpSession){

        List<Order> orders = orderService.getOrderById(userId);
        if(orders.isEmpty()){
            return "order";
        }
        httpSession.setAttribute("orders",orders);

        return "order";
    }
}
