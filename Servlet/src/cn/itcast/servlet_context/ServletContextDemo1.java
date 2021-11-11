package cn.itcast.servlet_context;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/ServletContextDemo1")
public class ServletContextDemo1 extends HttpServlet {
    /**
     * 获取ServletContext对象
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //通过request对象获取servletcontext对象
        ServletContext servletContext = request.getServletContext();
        //通过HTTPServlet类获取
        ServletContext servletContext1 = this.getServletContext();
        System.out.println(servletContext);
        System.out.println(servletContext1);
        //判断获取的两个servletcontext是否一样
        System.out.println(servletContext==servletContext1);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
