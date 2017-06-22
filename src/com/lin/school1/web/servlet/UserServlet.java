package com.lin.school1.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lin.school1.service.UserService;

import cn.itcast.servlet.BaseServlet;

/**
 * 用户数据的控制层
 * @author Administrator
 *
 */
@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 用户的业务逻辑层
	 */
    private UserService service = new UserService();
	
	public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "";
	}
}
