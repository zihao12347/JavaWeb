package cn.itcast.servlet_context;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ServletContextDemo2")
/**
 * 通过ServletContext对象获取MIME类型
 */
public class ServletContextDemo2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //通过HTTPServlet类获取servletcontext对象
        ServletContext servletContext = this.getServletContext();
        //定义一个文件(图片)
        String file="a.jpg";
        //通过getMimeType()方法获取Mime文件数据类型
        String mimeType = servletContext.getMimeType(file);
        System.out.println(mimeType);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
