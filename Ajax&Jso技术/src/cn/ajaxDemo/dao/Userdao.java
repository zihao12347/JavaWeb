package cn.ajaxDemo.dao;

import cn.ajaxDemo.domain.User;

public interface Userdao {
    //根据用户名查询数据库
    User findusername(String username);
}
