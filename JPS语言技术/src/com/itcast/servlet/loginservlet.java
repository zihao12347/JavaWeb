package com.itcast.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //一：设置request字符集编码
        request.setCharacterEncoding("UTF-8");
        //二：获取请求参数

        //获取注册表单的用户名信息
        String user = request.getParameter("user");
        //获取注册表单的密码信息
        String password = request.getParameter("password");
        //获取注册表单的验证码信息
        String checkcode = request.getParameter("checkcode");

        //三:1.获取保存在session中的servlet生成的随机验证码
        HttpSession session = request.getSession();
        String checkcode_session = (String) session.getAttribute("checkcode");
        //2.为确保验证码只为一次有效，这里要获取完验证码就从session中移除验证码信息
        session.removeAttribute("checkcode");

        //四：先判断输入的验证码和servlet生成的验证码是否一致(忽略大小写)或不为null，正确再判断用户名和密码是否正确；
        if (checkcode_session!=null&&checkcode_session.equalsIgnoreCase(checkcode)) {
            //验证码一致时：判断用户名和密码是否正确
            if ("zihao".equals(user) && "123456".equals(password)) {
                //用户名和密码正确时.重定向到登入成功的页面,并保存用户信息到session中
                request.getSession().setAttribute("username",user);
                request.getRequestDispatcher("successlogin.jsp").forward(request,response);
            } else {
                //用户名和密码不正确时，保存错误信息，重定向到登入页面
                String error_login="您输入的用户名或密码有误!";
                request.setAttribute("error_login",error_login);
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }

        } else {
            /**验证码不一致时
             *      1.保存错误提示信息
             *      2.转发到登入页面
             */
            String error_checkcode="您输入的验证码有误！";
            request.setAttribute("error_checkcode",error_checkcode);
            request.getRequestDispatcher("login.jsp").forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
