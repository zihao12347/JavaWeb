package cn.itcast.servlet_request.request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/demo4")
public class RequestDemo3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //2:根据请求头的名称获取请求头的值
            String referer = request.getHeader("Referer");
            System.out.println(referer);
            String header1 = request.getHeader("user-agent");
            //user-agent可以获取客户端浏览器的版本号
            if (header1.contains("Chrome")) {
                System.out.println("您使用的浏览器为谷歌浏览器 ！");
            }
            if (header1.contains("Microsoft")) {
                System.out.println("您使用的浏览器为微软览器！");
            }else {
                System.out.println("您使用的浏览器为其他浏览器！");
            }


        }

    }

