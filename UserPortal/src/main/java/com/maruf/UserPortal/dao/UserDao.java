package com.maruf.UserPortal.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.maruf.UserPortal.bean.User;

public class UserDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(User user) {
		String sql = "insert into user(firstname,lastname,address,phone,email,birthdate,password) values('"
				+ user.getFirstName() + "','" + user.getLastName() + "','" + user.getAddress() + "','" + user.getPhone()
				+ "','" + user.getEmail() + "','" + user.getBirthDate() + "','" + user.getPassword() + "')";
		return template.update(sql);

	}

	public User getUserByEmailAndPass(String email, String password) {
		String sql = "select * from user where email=? and password=?";
		try {
			return template.queryForObject(sql, new Object[] { email, password },
					new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<User> getUsers() {

		String sql = "select * from user ";

		List<User> users =template.query(sql, new BeanPropertyRowMapper<User>(User.class));

		return users;
	}
	
	public int setnewpass(int id,String newpass)
	{
		String sql = "update user set password=? where id=?";
		return template.update(sql,newpass,id);
	}

}
