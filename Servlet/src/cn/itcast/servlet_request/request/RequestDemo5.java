package cn.itcast.servlet_request.request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/demo5")
public class RequestDemo5 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 获取请求体中的信息---->请求信息
         */
        //BufferedReader字节输入流
        BufferedReader br=req.getReader();
        String line;
        while ((line=br.readLine())!=null) {
            System.out.println(line);
        }

    }
}