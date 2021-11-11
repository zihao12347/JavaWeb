package cn.ajaxDemo.service;

import cn.ajaxDemo.dao.Userdao;
import cn.ajaxDemo.domain.User;

public interface UserService {
   User findusername(String username);
}
