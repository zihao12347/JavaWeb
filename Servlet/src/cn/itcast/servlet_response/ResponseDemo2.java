package cn.itcast.servlet_response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 获取字符输出流：向客户端浏览器输出数据
 *
 */
@WebServlet("/responseDemo2")
public class ResponseDemo2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1;设置响应类型和字符编码方法一：
        //response.setContentType("text/html;charset=utf-8");
        //1;设置响应类型和字符编码c方法二：
        response.setHeader("content-type","text/html;charset=utf-8");
        //2:PrintWriter字符输出流：获取字符输出流对象：向客户端浏览器输出数据
        PrintWriter writer = response.getWriter();
        //writer()，println()方法向浏览器打印输入信息
        writer.write("您好客户端浏览器我是服务器！");
        writer.println("客户端浏览器再次见到你高兴！");

    }
}
