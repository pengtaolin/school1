package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户数据信息
 * 实现序列化
 * @author Administrator
 *
 */
public class User implements Serializable{
	private static final long serialVersionUID = -555278893435622494L;
	/**
	 * 用户ID
	 */
	private int userId;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 爱好
	 */
	private String hobby;
	/**
	 * 地址
	 */
	private String address;
	/**
	 * 性别
	 */
	private String sex;
	/**
	 * 图片url
	 */
	private String image;
	/**
	 * 邮箱
	 */
	private String email;
	/**
	 * 注册时间
	 */
	private Date userTime;
	/**
	 * 出生日期
	 */
	private Date birthday;
	/**
	 * 电话号
	 */
	private String phoneNumber;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getUserTime() {
		return userTime;
	}
	public void setUserTime(Date userTime) {
		this.userTime = userTime;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", hobby=" + hobby
				+ ", address=" + address + ", sex=" + sex + ", image=" + image + ", email=" + email + ", userTime="
				+ userTime + ", birthday=" + birthday + ", phoneNumber=" + phoneNumber + "]";
	}
}
