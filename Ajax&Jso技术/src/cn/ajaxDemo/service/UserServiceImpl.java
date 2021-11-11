package cn.ajaxDemo.service;

import cn.ajaxDemo.dao.Userdao;
import cn.ajaxDemo.dao.UserdaoImpl;
import cn.ajaxDemo.domain.User;

public class UserServiceImpl implements UserService {
    private Userdao userdao=new UserdaoImpl();

    @Override
    public User findusername(String username) {
        User findusername = userdao.findusername(username);
        return findusername;
    }
}
