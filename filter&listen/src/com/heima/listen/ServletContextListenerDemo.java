package com.heima.listen;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * ServletContext对象的创建和销毁的监听器：ServletContextListener接口
 */
//@WebListener
public class ServletContextListenerDemo implements ServletContextListener {
    /**
     * ServletContext对象创建时执行此方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("监听到对象的创建！");
        //获取监听到的对象
        ServletContext servletContext = sce.getServletContext();
        System.out.println(servletContext);
        //向应用域中添加属性
        servletContext.setAttribute("name", "zhansan");
        //向应用域中替换属性
        servletContext.setAttribute("name", "wangwu");
        //向应用域中移除属性
        servletContext.removeAttribute("name");
    }

    /**
     * 销毁的时候执行方法
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("监听到对象的销毁!");
    }
}
