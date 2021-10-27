package com.lyz.controller;

import com.lyz.bean.Admin;
import com.lyz.bean.User;
import com.lyz.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import sun.security.util.Password;


import javax.servlet.http.HttpSession;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-04  11:00
 */
@Controller
@RequestMapping("/admin")
public class AdminServlet {

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(String username, String password, HttpSession httpSession){

        ModelAndView mv = new ModelAndView();
        Admin admin = adminService.getAdminByAdminName(username);

        if(admin == null) {
            httpSession.setAttribute("message", "管理员不存在");
            mv.setViewName("redirect:/adminLogin.jsp");

        }else if(!admin.getPassword().equals(password)){
            httpSession.setAttribute("message","管理员账户名或密码错误");
            mv.setViewName("redirect:/adminLogin.jsp");

        }


        httpSession.removeAttribute("message");
        mv.setViewName("frame");
        httpSession.setAttribute("admin",admin);

        return mv;
    }

    @RequestMapping("/toUpdatePassword")
    public String toUpdatePassword(Model model,HttpSession httpSession){
        Object admin = httpSession.getAttribute("admin");
        model.addAttribute("user", admin);

        return "forward:/WEB-INF/tgls/modify_password.jsp";
    }

    @RequestMapping(value = "/updatePassword",method = RequestMethod.POST)
    public String updatePassword(@RequestParam("username") String username, @RequestParam("oldPassword")String oldPassword,
                                 @RequestParam("password") String password, @RequestParam("password2")String password2,
                                 HttpSession httpSession){

        if(password == password2){
            httpSession.setAttribute("message","两次密码输入不一致");
            return "forward:/WEB-INF/tgls/modify_password.jsp";
        }

        if(oldPassword == password){
            httpSession.setAttribute("message","新密码和旧密码一样");
            return "forward:/WEB-INF/tgls/modify_password.jsp";
        }

        Admin admin = adminService.getAdminByAdminName(username);

        if(admin == null){
            httpSession.setAttribute("message","旧密码不正确");
            return "forward:/WEB-INF/tgls/modify_password.jsp";
        }


        int i = adminService.updatePasswordById(admin,password);
        if(i == 0 ){
            httpSession.setAttribute("message","更新失败");
            return "forward:/WEB-INF/tgls/modify_password.jsp";
        }

        httpSession.setAttribute("message","更新成功");
        return "forward:/WEB-INF/tgls/modify_password.jsp";
    }


    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){

        httpSession.removeAttribute("admin");
        
        return "redirect:/adminLogin.jsp";
    }
}
