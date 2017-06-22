package com.lin.school1.dao;

import java.sql.SQLException;

import com.lin.school1.bean.User;

/**
 * 用户对象的数据层
 * @author Administrator
 *
 */
public class UserDao extends Dao{

	/**
	 * 增加用户信息
	 * @param user
	 */
	public void add(User user) {
		try {
			sql = "";
			qr.update(sql);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
