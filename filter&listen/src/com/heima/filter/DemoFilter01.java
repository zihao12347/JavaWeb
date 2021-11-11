package com.heima.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Filter生命周期：
 *      1.init()初始
 *      2.doFilter()执行过滤服务
 *      3.destroy()销毁
 */
public class DemoFilter01 implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("对象初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("执行DemoFilter01过滤服务");
    }

    @Override
    public void destroy() {
        System.out.println("对象销毁");
    }
}
