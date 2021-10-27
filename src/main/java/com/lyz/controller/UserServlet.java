package com.lyz.controller;

import com.lyz.bean.User;
import com.lyz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  11:14
 */
@Controller
@RequestMapping("/user")
public class UserServlet {

    @Autowired
    private UserService userService;

    @RequestMapping("/toAdd")
    public String add(){


        return "forward:/WEB-INF/tgls/agent/agent_add.jsp";
    }

    @RequestMapping("/toList")
    public String list(Model model){

        List<User> users = userService.getAllUser();

        model.addAttribute("users",users);
        return "forward:/WEB-INF/tgls/agent/agent_list.jsp";
    }

    @RequestMapping("/add")
    public ModelAndView addUser(User user){

        ModelAndView mv = new ModelAndView();

        String result = userService.isUserExist(user);
        if(result != null){
            mv.addObject("message",result + " has exist");
            mv.setViewName("forward:/WEB-INF/tgls/agent/agent_add.jsp");
            return mv;
        }

        int i = userService.addUser(user);

        if(i == 0){
            mv.addObject("message","add fail,please retry");
            mv.setViewName("forward:/WEB-INF/tgls/agent/agent_add.jsp");
            return mv;
        }

        List<User> users = userService.getAllUser();
        mv.addObject("users",users);
        mv.setViewName("forward:/WEB-INF/tgls/agent/agent_list.jsp");

        return mv;
    }

    @PostMapping("/login")
    public String login(String username,String password,Model model,HttpSession httpSession){

        User user = userService.getUserByUsername(username);

        if(user == null){
            model.addAttribute("message","user not exits");
            return "forward:login.jsp";
        }

        if( ! userService.isPasswordCorrect(username,password) ){
            model.addAttribute("message","password not correct");
            return "forward:login.jsp";
        }
        httpSession.setAttribute("user",user);
        return "index";
    }
}