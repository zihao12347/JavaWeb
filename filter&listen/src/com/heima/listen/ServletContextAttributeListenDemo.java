package com.heima.listen;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * 应用域对象中的属性变化进行监听:ServletContextAttributeListener接口
 */
//@WebListener
public class ServletContextAttributeListenDemo implements ServletContextAttributeListener {
    /**
     *向应用域中添加属性时执行该方法
     * @param scae
     */
    @Override
    public void attributeAdded(ServletContextAttributeEvent scae) {
        System.out.println("监听到了属性的添加！");
        //获取应用域对象
        ServletContext servletContext = scae.getServletContext();
        Object name = servletContext.getAttribute("name");
        System.out.println(name);
    }

    /**
     *向应用域中移除属性时执行该方法
     * @param scae
     */
    @Override
    public void attributeRemoved(ServletContextAttributeEvent scae) {
        System.out.println("监听到应用域属性的移除！");
        //获取应用域对象
        ServletContext servletContext = scae.getServletContext();
        Object name = servletContext.getAttribute("name");
        System.out.println(name);
    }
    /**
     *向应用域中替换属性时执行该方法
     * @param scae
     */
    @Override
    public void attributeReplaced(ServletContextAttributeEvent scae) {
        System.out.println("监听到属性的替换！");
        //获取应用域对象
        ServletContext servletContext = scae.getServletContext();
        Object name = servletContext.getAttribute("name");
        System.out.println(name);
    }
}
