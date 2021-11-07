import com.lyz.bean.Book;
import com.lyz.bean.Order;
import com.lyz.mapper.BookMapper;
import com.lyz.service.BookService;
import com.lyz.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-20  13:54
 */
@WebAppConfiguration
//告诉junit spring的配置文件
@ContextConfiguration({ "classpath:spring-mybatis.xml",
        "classpath:spring-mvc.xml"})
//配置spring和junit整合，这样junit在启动时就会加载spring容器
@RunWith(SpringJUnit4ClassRunner.class)

public class BookTest extends BaseTest{

    @Autowired
    private BookService bookService;

    @Autowired
    private OrderService orderService;


    @Test
    public void test(){

        int id = 91;
        String name = "Think in Java";
        String author = "xxx";
        int price = 99;
        String introduction = "development";
        int stock = 10;
        String provid = "文艺";
        String cover = "111";
        String time = "2020-01-01";


//        int i = bookService.addBook(name, price, author, introduction, stock, provid, cover,time);
//        System.out.println(i);

        bookService.deleteById(91);
    }


    @Test
    public void testForOrder(){
        List<Order> orderById = orderService.getOrderById(1);
        System.out.println(orderById);
    }
}
