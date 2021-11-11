package cn.itcast3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/cookiedemo1")
public class CookieTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //设置响应类型和字符编码
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        //获取Cookie集合
        Cookie[] cookies = request.getCookies();
        boolean flag=false;
        //判断cookies不为null并且长度大于0
        if (cookies != null && cookies.length > 0) {
            //遍历cookie数组
            for (Cookie cookie : cookies) {
                //获取cookie的名称
                String name = cookie.getName();
                //获取cookie的值
                String value = cookie.getValue();
                //对获取的值进行解码
                String s = URLDecoder.decode(value);
                //判断cookie中有名为msg
                if ("msg".equals(name)) {
                    flag=true;
                    response.getWriter().write("欢迎"+name+"再次登入您上次访问的时间为："+s);
                    //获取当前时间
                    Date date=new Date();
                    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String format = sdf.format(date);
                    //进行编码
                    String s1 = URLEncoder.encode(format);
                    cookie.setValue(s1);
                    response.addCookie(cookie);
                    break;
                }


            }
        }
        if (cookies==null||cookies.length==0||flag==false) {
            Date date=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String format = sdf.format(date);
            //tomcat8之后的版本支持中文数据但是特殊字符不支持,需要进行编码
            String s = URLEncoder.encode(format);
            Cookie cookie = new Cookie("msg", s);
            response.addCookie(cookie);
            response.getWriter().write("欢迎首次访问！");


        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
