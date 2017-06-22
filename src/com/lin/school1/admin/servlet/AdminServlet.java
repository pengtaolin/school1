package com.lin.school1.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lin.school1.bean.User;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;


@WebServlet("/AdminServlet")
public class AdminServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//一键封装数据
		User admin = CommonUtils.toBean(request.getParameterMap(), User.class);
		//管理员用户名与密码
		String email = request.getServletContext().getInitParameter("admin");
		String password = request.getServletContext().getInitParameter("password");
		
		//邮箱验证
		if (admin.getEmail().equals(email)){
			//密码正确
			if (admin.getPassword().equals(password)) {
				
			}else {
				
			}
		}else{
			
		}
		return "r:/jsps/admin/index.jsp";
	}

}
