package cn.itcast2.web2.servlet;

import cn.itcast2.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/successServlet")
public class successServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置响应的编码格式
        response.setContentType("text/html;charset=utf-8");
        //获取request作用域中保存的username参数值
        User user = (User) request.getAttribute("user");
        if (user != null) {
            response.getWriter().write("亲爱的"+user.getUsername()+"用户欢迎登入成功！");

        }
         }
}
