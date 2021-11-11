package cn.itcast.demo.web.servlet;

import cn.itcast.demo.domain.Address;
import cn.itcast.demo.service.AddressService;
import cn.itcast.demo.service.AddressServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findServlet")
public class FindAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //一：1.1创建AddressService对象
        AddressService as=new AddressServiceImpl();
       /* //1.2调用as的findaddress()方法查询数据
        List<Address> list = as.findaddress();
        for (Address address : list) {
            System.out.println(address);
        }*/
        //1.2调用as的findredis()方法查询数据
        String findredis = as.findredis();
        System.out.println(findredis);

        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(findredis);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
