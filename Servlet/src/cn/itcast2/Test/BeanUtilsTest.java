package cn.itcast2.Test;

import cn.itcast2.dao.UserDao;
import cn.itcast2.domain.User;
import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;

public class BeanUtilsTest {
    @Test
    public void test1(){
        User user=new User();
        try {
           // BeanUtils.setProperty(user,"username","zihao");
            BeanUtils.setProperty(user,"username","123456");
            String username = BeanUtils.getProperty(user, "username");

            System.out.println(user);

            System.out.println(username);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }
}
