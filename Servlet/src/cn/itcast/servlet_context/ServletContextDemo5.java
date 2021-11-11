package cn.itcast.servlet_context;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet("/ServletContextDemo5")
/**
 * ServletContext：域对象：共享数据
 * Servlet中四大域对象：request域，session域，cookie域，servletContext域（最大域对象）
 */
public class ServletContextDemo5 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取ServletContext对象
        ServletContext servletContext = this.getServletContext();
        //getRealPath()方法应用部署的绝对磁盘路径
        String realPath = servletContext.getRealPath("/b.txt");
        //getContextPath()获取应用访问的虚拟目录
        String contextPath = servletContext.getContextPath();
        System.out.println(realPath);
        System.out.println(contextPath);
        //获取c.txt文件的服务器路径
        String realPath1 = servletContext.getRealPath("/WEB-INF/c.txt");
        System.out.println(realPath1);
        //创建一个file对象
        File file=new File(realPath);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
