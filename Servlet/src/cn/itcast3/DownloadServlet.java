package cn.itcast3;

import sun.management.Agent;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.interfaces.RSAKey;

@WebServlet("/downloadServlet")
public class DownloadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * 1.获取表头的请求参数
         *
         */

        String filename = request.getParameter("filename");

        /**
         * 2.使用字节输入将文件流加载进内存
         */

            //2.1获取ServletContext对象
        ServletContext servletContext = this.getServletContext();
            //2.2获取文件的服务器路径
        String realPath = servletContext.getRealPath(filename);
            //2.3通过获取的文件创建字节输入流
        FileInputStream fis=new FileInputStream(realPath);
        /**
         * 设置响应类型
         */

        String mimeType = servletContext.getMimeType(filename);
        response.setHeader("content-type",mimeType);//设置文件的响应类型
        /**
         *    *决绝中文文件名的问题
         *
         */
        //1.获取请求消息的user-agent
        String header = request.getHeader("user-agent");
        //2.使用DownLoadUtils工具类方法编码文件
        filename = DownLoadUtils.getFileName(header, filename);
        response.setHeader("content-disposition","attachment;filename="+filename);//以附件的形式打卡（下载）
        /**
         * 4.将字节输入流写入到字节输出流中
         */

        ServletOutputStream sop=response.getOutputStream();
        byte [] b=new byte[1024*10];
        int len=0;
        while ((len=fis.read(b))!=-1) {
            sop.write(b,0,len);
        }
    }
}
