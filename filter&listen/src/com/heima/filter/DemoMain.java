package com.heima.filter;

import com.sun.org.apache.regexp.internal.RE;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * filter过滤器：可以将请求进行拦截，并在拦截之后进行一些特殊的操作；
 *      javaWeb三大组件：filter过滤器，listen监听器,servlet
 *    1.Filter接口；
 *        Filter是一个接口，如果想实现过滤的功能，必须实现该接口
 *    2.filter接口方法：
 *       1.init(FilterConfig ft)初始化方法
 *              *FilterConfig接口；代表过滤器的配置对象，加载一些过滤器的初始化参数。
 *
 *       2.doFilter(response,request,filterChain)对请求资源和响应资源进行过滤
 *            *filterChain接口：
 *                  代表过滤链对象，过滤器可以定义多个，多个过滤器就形成过滤器链。
 *                方法：doFilter()放行方法，
 *       3.destroy()销毁方法
 *    3.filter使用方式：
 *       1.注解:
 *              在拦截类中使用@WebFilter()注解指定需要拦截的请求路径
 *       2.配置文件
 *    4.使用场景：
 *        权限控制，过滤敏感字符，解决中文乱码问题等
 *    5.过滤器的五种拦截行为：
 *          过滤器默认拦截的是请求中的路径，但是对于请求转达，请求包含，全局错误页面，等不进行过滤
 *
 *      *  多个过滤器的使用：
 *              多个过滤器，取决过滤器映射的路径
 *
 *
 */
//@WebFilter("/*")
public class DemoMain implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("DemoMain对象初始化！");
        //getFilterName()方法获取过滤器的名称
        String filterName = filterConfig.getFilterName();
        System.out.println(filterName);
        //getInitParameter(s)根据名称获取初始化参数
        String name = filterConfig.getInitParameter("name");
        System.out.println(name);
    }

    /**
     * 通过过滤器实现中午
     * @param servletRequest
     * @param servletResponse
     * @param filterChain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("filterdemo01");
        //解决全局中文乱码
        servletResponse.setContentType("text/html;charset=utf-8");
        //filterChain对象的doFilter()方法放行
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
