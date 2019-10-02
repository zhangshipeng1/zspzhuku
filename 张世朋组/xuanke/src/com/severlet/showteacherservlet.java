package com.severlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;
import com.news.feng.manager;

public class showteacherservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    List<manager> list= managedao.getselectteacher();
			request.setAttribute("list1", list);
			request.getRequestDispatcher("backstageframe.files/showteacher.jsp").forward(request, response);
	}

}
