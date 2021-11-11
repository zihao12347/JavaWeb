package com.itheima.session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 获取共享域中的数据
 */
@WebServlet("/DemoSession02")
public class DemoSession02 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        //1.获取session共享域中的对象
        HttpSession session = request.getSession();
        System.out.println(session);
        System.out.println(session.getId());//getId()获取session对象的唯一标识
        //2.获取共享数据
        String name = (String) session.getAttribute("name");
        response.getWriter().write(name);//响应给浏览器
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
