package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.news.dor.managerdao;
import com.news.feng.student;

public class logseverlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public logseverlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		studentlog(request, response);

	}

	private void studentlog(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String username = request.getParameter("n1");// 获取用户名
		String password = request.getParameter("m1");// 获取密码
		HttpSession filtersession= request.getSession();
		filtersession.setAttribute("filter", username);
		
		student stude = new student();
		stude.setUsername(username);
		stude.setPassword(password);
		
		boolean log = managerdao.login(stude);
		
		if (log) {
			Cookie user = new Cookie("username1", username);
			Cookie pass = new Cookie("password1", password);
			user.setMaxAge(-1);
			pass.setMaxAge(-1);
			response.addCookie(user);
			response.addCookie(pass);
			String us = "";
			String ps = "";
			
			Cookie cook[] = request.getCookies();
			if (cook != null && cook.length > 0) {
				for (Cookie cooks : cook) {
					if ("username1".equals(cooks.getName())) {
						us = cooks.getValue();

					}
					if ("password1".equals(cooks.getName())) {
						ps = cooks.getValue();
					}
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("us1", us);
			session.setAttribute("ps1", ps);
			ServletContext application=this.getServletContext();
			//向Servlet添加一组键值对
			application.setAttribute("name",username);//定义全局变量name；
			response.sendRedirect("/xuanke/index.jsp");
		} else {
			response.sendRedirect("/xuanke/studentLogin.jsp?error=yes");
		}


		
	}

	

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
