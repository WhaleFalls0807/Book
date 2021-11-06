package com.lyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-11-06  21:05
 */
@Controller
@RequestMapping("/to")
public class Redirect {

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
}
