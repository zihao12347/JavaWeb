package cn.ajaxDemo.web.servlet;

import cn.ajaxDemo.domain.User;
import cn.ajaxDemo.service.UserService;
import cn.ajaxDemo.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/ajaxDemoServlet")
public class AjaxDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置响应类型
        response.setContentType("text/html;charset=utf-8");
        //获取请求参数
        String username=request.getParameter("username");
        System.out.println(username);
        //调用userservice查询数据库
       UserService userService=new UserServiceImpl();
        User user = userService.findusername(username);
        //创建一个map数组用于保存传递到客户端的提示信息
        Map<String,Object> map= new HashMap<>();
        if (user!=null) {//表示该用户名不存在

            map.put("userExsit",false);
        }else {
            map.put("userExsit",true);
            map.put("msg","该用户名已存在，请更换！");
        }
        //创建json核心对象ObjectMapper
        ObjectMapper mapper=new ObjectMapper();
        //将java对象转化成json对象，并传递给客户端
        mapper.writeValue(response.getWriter(),map);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
