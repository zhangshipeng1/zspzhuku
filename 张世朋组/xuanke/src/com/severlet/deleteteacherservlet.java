package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class deleteteacherservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String gh=request.getParameter("teachergh");
		managedao manage=new managedao();
		int flag=manage.deleteteacher(gh);
		if(flag>0){
			request.getRequestDispatcher("backstageframe.files/deleteteacherdl.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("backstageframe.files/deleteteachercl.jsp").forward(request, response);
		}
	}

}
