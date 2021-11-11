package com.itheima.cookie;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Web中会话技术：浏览器和服务器之间的多次请求和响应
 *   会话的分类：
 *        1.cookie客户端会话技术
 *        2.session服务器会话技术
 *   Cookie客户端会话管理技术：把要共享的数据保存到客户端中（浏览器），
 *          每次请求时，把会话信息传递到服务器，从而实现多次请求的数据共享
 *          Cookie是客户端浏览器的缓存文件，里面记录了一些客户浏览器访问网站的一些信息，同时也是HTTP请求协议和响应头的一部分
 *      作用：可保存客户端访问网站的相关信息，从而保证每次访问先从本地缓存中获取数据，提高响应效率；
 *      细节：每个网站最多只能保存20个cookies,大小不超过4kb,所有网站总cookie不超过300个
 *      cookie的获取和添加
 *          1.通过HttpServletResponse对象的addCookie(cookie c)方法添加cookie
 *          2.通过HttpServletRequest对象的getCookies()获取所有的cookie返回的类型未一个数组
 *      cookie存活时间：setMaxAge()方法接收数字
 *         1.正整数：毫秒为单位
 *         2.负数：当前会话有效，浏览器关闭则清除
 *         3.0，立即清除
 *      cookie路径限制：
 *          默认路径：取自第一次访问路径的前缀，只有以该前缀开始的路径都可以获取
 *          设置路径:setPath()d
 *
 *
 *
 *
 *
 */
@WebServlet("/cookiedemo01")
public class DemoMain extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        //1.通过请求响应写出提示信息
        PrintWriter writer = resp.getWriter();//通过输出流对象写入客户端响应
        writer.write("欢迎访问本网站，您的最后访问时间为：<br>");
        //2.创建cookie，用于记录最后访问时间
        Cookie cookie = new Cookie("time", System.currentTimeMillis()+"");
        //3设置最大存活时间setMaxAge()方法设置最大存活时间
        //cookie.setMaxAge(3600);
        cookie.setMaxAge(0);//0表示立即销毁
        //4.通过响应对象将cookie添加到客户端
        resp.addCookie(cookie);
        //5.通过请求对象获取cookie
        Cookie[] cookies = req.getCookies();
        for (Cookie cookie1 : cookies) {
            if ("time".equals(cookie.getName())){
                //6.获取cookie中的值
                String value = cookie.getValue();
                //7.传递到客户端
                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String s = format.format(new Date(Long.parseLong(value)));
                writer.write(s);
            }
        }
    }
}
