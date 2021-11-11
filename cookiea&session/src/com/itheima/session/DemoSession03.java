package com.itheima.session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Cookie的禁用：当客户端浏览器中设置了cookie禁用，这样服务器就获取不到session对象，
 *      1. 可以通过弹出提示信息来提醒用户开启cookie的支持
*           当获取数据的session对象与保存数据时的session对象不一致时
 *          （ 此时表示浏览器关闭了cookie，getSession()方法每次默认创建了一个新的session对象），设置提醒信息
 *
 *      2. 通过重写url(也就是在url后面拼接session唯一标识)，解决获取不到session对象问题，
 *
 */
@WebServlet("/DemoSession03")
public class DemoSession03 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        //1.获取session共享域中的对象
        HttpSession session = request.getSession(false);//设置当获取不到session对象是，不再创建
        if (session == null) {
            response.getWriter().write("为确保方便您的使用，请开始浏览器中的cookie");
        }
        System.out.println(session);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
