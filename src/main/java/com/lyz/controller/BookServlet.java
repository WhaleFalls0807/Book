package com.lyz.controller;

import com.lyz.bean.Book;
import com.lyz.bean.Category;
import com.lyz.service.BookService;
import com.lyz.service.CategoryService;
import com.lyz.util.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  15:38
 */
@Controller
@RequestMapping("/book")
public class BookServlet {

    @Autowired
    private BookService bookService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/toList")
    public String toList(Model model){

        List<Book> books = bookService.getAllBooks();

        model.addAttribute("books",books);

        return "forward:/WEB-INF/tgls/goodsManage/goods_list.jsp";

    }

    @RequestMapping("/toUpdate")
    public String toUpdate(@RequestParam("id") String id, Model model){
        Book book = bookService.getBookById(id);
        List<Category> sc = categoryService.getAllCategory();
        model.addAttribute("book",book);
        model.addAttribute("sc",sc);

        return "forward:/WEB-INF/tgls/goodsManage/goods_update.jsp";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        List<Category> sc = categoryService.getAllCategory();
        model.addAttribute("sc",sc);
        return "forward:/WEB-INF/tgls/goodsManage/goods_add.jsp";
    }


    @RequestMapping("/add")
    public String addBook(@RequestParam("name") String name, @RequestParam("author") String author,
                          @RequestParam("price") String price, @RequestParam("stock") String stock,
                          @RequestParam("introduction") String introduction,
                          @RequestParam("provid") String provid,
                          @RequestParam("cover") MultipartFile file, HttpSession httpSession){


        String cover = FileUtils.uploadFile(file);
        bookService.addBook(name,price,author,stock,introduction,provid,cover);

        List<Book> allBooks = bookService.getAllBooks();
        httpSession.setAttribute("book",allBooks);
        return "forward:/WEB-INF/tgls/goodsManage/goods_list.jsp";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(@RequestParam("id") String id,
                         @RequestParam("name") String name, @RequestParam("author") String author,
                         @RequestParam("price") String price, @RequestParam("stock") String stock,
                         @RequestParam("introduction") String introduction, @RequestParam("provid") String provid,
                         @RequestParam("cover") MultipartFile file, HttpSession httpSession){


        String cover = FileUtils.uploadFile(file);
        bookService.updateBook(id,name,price,author,stock,introduction,provid,cover);

        return null;

    }


    @RequestMapping("/search/{bookName}")
    public String searchBook(@PathVariable("bookName") String bookName, HttpServletRequest httpRequest){
        List<Book> allBookByName = bookService.getAllBookByName(bookName);

        httpRequest.setAttribute("books",allBookByName);
        return "search";
    }
}
