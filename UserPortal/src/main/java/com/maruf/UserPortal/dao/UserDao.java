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
		try {
			String sql = "insert into user(firstname,lastname,address,phone,email,birthdate,password) values('"
					+ user.getFirstName() + "','" + user.getLastName() + "','" + user.getAddress() + "','" + user.getPhone()
					+ "','" + user.getEmail() + "','" + user.getBirthDate() + "','" + user.getPassword() + "')";
			return template.update(sql);
		}
		catch(Exception e)
		{
			return -1; 
		}

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

		List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));

		return users;
	}

	public int setnewpass(String email, String newpass) {
		String sql = "update user set password=? where email=?";
		return template.update(sql, newpass, email);
	}

	public User getUserByEmail(String email) {
		String sql = "select * from user where email=?";
		try {
			return template.queryForObject(sql, new Object[] { email }, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			return null;
		}
	}

	public List<User> getUsersByName(String name) {
		String sql = "select * from user where firstname=? or lastname=?";
		try {
			List<User> users = template.query(sql, new Object[] { name , name }, new BeanPropertyRowMapper<User>(User.class));
			return users;
		} catch(Exception e) {
			return null;
		}
		
	}

}
