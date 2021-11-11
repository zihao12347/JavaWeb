package cn.itcast.servlet_response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 实现页面的重定向
 */
@WebServlet("/responsedemo1")
public class Responsedemo1_1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /**
         * 页面重定向方法一：设置响应的状态码和响应头的location
         */
//1.设置字符集编码
       /* response.setCharacterEncoding("utf-8");
        //设置响应体（响应正文）的类型格式
        response.setContentType("text/html");
        //2.response的status()方法设置响应状态码
        response.setStatus(302);
        //3.设置响应头的location地址
        response.setHeader("location","/day_13Tomcat__Servlet_war_exploded/responsedemo2");
        response.getWriter().write("这里是页面一：");*/

        /**
         * 设置页面重定向的方法二:response的sendRedirect方法
         *
         */

        response.sendRedirect("/day_13Tomcat__Servlet_war_exploded/responsedemo2");

    }
}
