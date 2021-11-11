package cn.itcast.cookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Cookie快速入门
 */
@WebServlet("/CookieDemo3")
public class CookieDemo3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.创建Cookie对象
        Cookie cookie=new Cookie("msg","梓浩");
        //设置Cookie的保留时间
        //cookie.setMaxAge(30);//正数值：将cookie写入到硬盘，在指定时间后自动删除
        //coolie.setMaxAge(-1);//默认情况，当服务器关闭数据删除
        //cookie.setMaxAge(0);//删除数据
        //2.将cookie对象发送到客户端
        response.addCookie(cookie);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
