package cn.itcast.servlet_response;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/servletDemo3")
public class ServletDemo3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1:设置响应类型和字符编码
        response.setContentType("text/html;charset=utf-8");
        //2：getOutputStream()方法获取ServletOutputStream字节输入流对象
        ServletOutputStream sop = response.getOutputStream();
        sop.write("您好浏览器！".getBytes("utf-8"));

    }
}
