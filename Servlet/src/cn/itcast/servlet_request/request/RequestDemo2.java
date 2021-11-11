package cn.itcast.servlet_request.request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/demo3")
public class RequestDemo2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1：Enumeration getHeaders()获取所有的的请求头的所有名称
        Enumeration<String> headers = (Enumeration<String>) request.getHeaderNames();
        //while变量集合
        while (headers.hasMoreElements()){
            String s = headers.nextElement();
            System.out.print(s);
            //根据获取了的请求头的名字或者请求头的值
            String header = request.getHeader(s);
            System.out.println(header);
        //2:根据请求头的名称获取请求头的值
            String referer = request.getHeader("Referer");
            System.out.println(referer);
            String header1 = request.getHeader("user-agent");
            //user-agent可以获取客户端浏览器的版本号
            if (header1.contains("Chrome")) {
                System.out.println("您使用的浏览器为谷歌浏览器！");
            }
            if (header1.contains("MicrosoftEdge")) {
                System.out.println("您使用的浏览器为微软览器！");
            }else {
                System.out.println("您使用的浏览器为其他浏览器！");
            }


        }

    }
}
