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
@WebServlet("/responsedemo1_1")
public class Responsedemo1_2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置字符集编码
        response.setCharacterEncoding("utf-8");
        //设置响应体（响应正文）的类型格式
        response.setContentType("text/html");

        response.getWriter().println("该页面重定向后的页面！");
    }
}
