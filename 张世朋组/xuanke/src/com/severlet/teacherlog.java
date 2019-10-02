package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.news.dor.managerdao;
import com.news.feng.teacher;

public class teacherlog extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public teacherlog() {
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

		teacherdolog(request, response);
	}

	private void teacherdolog(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("n1");// 获取用户名
		String password = request.getParameter("m1");// 获取密码
		teacher teach = new teacher();
		teach.setUsername(username);
		teach.setPassword(password);
		boolean log = managerdao.teachelogin(teach);
		if (log) {
			String us = "";
			String ps = "";
			Cookie user = new Cookie("username2", username);
			Cookie pass = new Cookie("password2", password);
			user.setMaxAge(6000);
			pass.setMaxAge(6000);
			response.addCookie(user);
			response.addCookie(pass);
			Cookie cook[] = request.getCookies();
			ServletContext application=this.getServletContext();
			//向Servlet添加一组键值对
			application.setAttribute("name",username);
			if (cook != null && cook.length > 0) {
				for (Cookie cookie : cook) {
					if ("username2".equals(cookie.getName())) {
						us = cookie.getValue();
					}
					if ("password2".equals(cookie.getName())) {
						ps = cookie.getValue();
					}
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("us2", us);
			session.setAttribute("ps2", ps);
			request.getRequestDispatcher("/teacher/teachermain.jsp").forward(request,
					response);

		} else {
			// System.out.print(username);
			response.sendRedirect("../teacher/teacherLogin.jsp?error=yes");
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
