package cn.ajaxDemo.dao;

import cn.ajaxDemo.domain.User;
import cn.ajaxDemo.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserdaoImpl implements Userdao {
    //创建jdbctemplate对象
    JdbcTemplate jdbcTemplate=new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public User findusername(String username) {
        User query;
        try {
            query = jdbcTemplate.queryForObject("select * from user where username=?",new BeanPropertyRowMapper<User>(User.class),username);
            return query;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
}
