package com.lyz.controller;

import com.lyz.bean.Category;
import com.lyz.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  15:50
 */
@Controller
@RequestMapping("/category")
public class CategoryServlet {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/toList")
    public String toList(Model model){

        List<Category> allCategory = categoryService.getAllCategory();
        model.addAttribute("cs",allCategory);
        return "forward:/WEB-INF/tgls/goodsManage/goodsType_list.jsp";
    }

    @RequestMapping("/toAdd")
    public String toAdd(){

        return "forward:/WEB-INF/tgls/goodsManage/goodsType_add.jsp";
    }

    @RequestMapping("/add")
    public String add(@RequestParam("name") String name,
                      @RequestParam("grade") String grade,
                      @RequestParam("parent") String parent){


        int i = categoryService.addCategory(name, grade, parent);
        return "forward:/WEB-INF/tgls/goodsManage/goodsType_list.jsp";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(){

        return "forward:/WEB-INF/tgls/goodsManage/goodsType_add.jsp";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("name") String name,
                      @RequestParam("grade") String grade,
                      @RequestParam("parent") String parent){


        int i = categoryService.addCategory(name, grade, parent);
        return "forward:/WEB-INF/tgls/goodsManage/goodsType_list.jsp";
    }

}
