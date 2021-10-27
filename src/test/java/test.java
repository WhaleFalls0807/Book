import com.lyz.bean.Admin;
import com.lyz.bean.Category;
import com.lyz.service.AdminService;
import com.lyz.service.CategoryService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-29  21:39
 */
public class test extends BaseTest{

    @Autowired
    public CategoryService categoryService;


    @Autowired
    private AdminService adminService;

    @Override
    public void test() {
        for (Category category : categoryService.getCategoryByGrade(1)) {
            System.out.println(category);
        }

    }

    @Test
    public void test1(){
        Admin admin = adminService.getAdminByAdminName("admin");
        System.out.println(admin);
    }
}
