package cn.itcast.servlet_request.request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/demo2")
public class RequestDemo1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * doget获取请求参数(默认的请求方法)
         */

        //获取请求的所使用的http方法
        String method = req.getMethod();
        System.out.println(method);
        //获取请求时的上下路径
        String contextPath = req.getContextPath();
        System.out.println(contextPath);
        //获取servlet路径
        String servletPath = req.getServletPath();
        System.out.println(servletPath);
        //获取请求中的参数
        String queryString = req.getQueryString();
        System.out.println(queryString);
        //获取请求的URI
        String requestURI = req.getRequestURI();
        System.out.println(requestURI);
        //获取请求的URl
        StringBuffer requestURL = req.getRequestURL();
        System.out.println(requestURL);
        //获取协议以及版本号
        String protocol = req.getProtocol();
        System.out.println(protocol);
        //获取客户端的IP地址
        String remoteAddr = req.getRemoteAddr();
        System.out.println(remoteAddr);
    }

}
