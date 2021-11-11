package cn.itcast2.web2.servlet;

import cn.itcast2.dao.UserDao;
import cn.itcast2.domain.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置字符编码
        request.setCharacterEncoding("utf-8");
       /*//2.获取请求参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //3.将请求参数封装到javabean中，User中
        User loginuser=new User();
        loginuser.setUsername(username);
        loginuser.setPassword(password);*/
       //当用户需要提交的请求参数很多时，
        // 可以使用ParameterMap()方法获取请求的搜易参数
       //获取所有的请求参数
        Map<String, String[]> map = request.getParameterMap();
        //创建User对象
        User loginuser=new User();
        //使用BeanUtils工具类中populate（javabean类，map参数集合）方法将获取的所有请求参数封装到User类中
        try {
            BeanUtils.populate(loginuser,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }


        //调用UserDao中的login方法，把user传递过去
        UserDao dao=new UserDao();
        //login方法中的不出错则会放回一个user对象，否则方法null，表示登入失败
        User user = dao.login(loginuser);
        if (user==null) {
            request.getRequestDispatcher("/failServlet").forward(request,response);
        }else {
            //讲获取的请求数据保存在request作用域中
            request.setAttribute("user",user);
            request.getRequestDispatcher("/successServlet").forward(request,response);
        }

    }
}
