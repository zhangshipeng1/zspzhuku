package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;
import com.news.feng.manager;

public class showsessionservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    List<manager> list= managedao.getselectsession();
			request.setAttribute("list2", list);
			request.getRequestDispatcher("backstageframe.files/showsession.jsp").forward(request, response);
	}

}
