
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;


/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-15  11:18
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration("classpath:resources")
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
public class BaseTest {

//    protected final static Logger log = LoggerFactory.getLogger(BaseTest.class);

    @Test
    public void test(){

    }
}
