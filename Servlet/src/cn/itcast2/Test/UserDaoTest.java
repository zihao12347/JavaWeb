package cn.itcast2.Test;

import cn.itcast2.dao.UserDao;
import cn.itcast2.domain.User;
import org.junit.Test;

public class UserDaoTest {
    @Test
    public void test1(){
        //创建User对象
        User loginuser=new User();
        //给user对象赋值username,password
        loginuser.setUsername("zihao");
        loginuser.setPassword("123456");
        //创建UserDao对象
        UserDao dao=new UserDao();
        User user = dao.login(loginuser);
        System.out.println(user);
    }
}
