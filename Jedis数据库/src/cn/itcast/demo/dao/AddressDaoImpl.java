package cn.itcast.demo.dao;

import cn.itcast.demo.domain.Address;
import cn.itcast.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class AddressDaoImpl implements AddressDao {
    //创建JdbcTemplate对象
    JdbcTemplate jdbcTemplate=new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Address> findaddress() {
        List<Address> list = jdbcTemplate.query("select * from province", new BeanPropertyRowMapper<Address>(Address.class));
        return list;
    }
}
