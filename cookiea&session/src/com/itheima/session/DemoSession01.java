package com.itheima.session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 设置session共享域中的数据
 */
@WebServlet("/DemoSession01")
public class DemoSession01 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.获取请求的用户
        String name = request.getParameter("name");
        //2.通过request对象获取session域对象
        HttpSession session = request.getSession();
        System.out.println(session);
        System.out.println(session.getId());
        //3.将用户名添加到session共享域对象中
        session.setAttribute("name", name);
        //解决浏览器禁用cookie
        response.getWriter().write("<a href='"+response.encodeURL("http://localhost:8080/cookiea_session_war_exploded/DemoSession03")+"'>go 03!</a>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
