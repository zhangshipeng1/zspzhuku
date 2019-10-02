package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class addteacherservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String gh=request.getParameter("ghname");
		String name=request.getParameter("Nname");
		String sex=request.getParameter("sexname");
		String password=request.getParameter("pwname");
		String bh=request.getParameter("bhname");
		managedao managedao=new managedao();
		int i=managedao.addTeacher(gh,name,sex,password);
		int j=managedao.addTeacher1(gh,bh);
		
		if(i>0&&j>0){
			request.getRequestDispatcher("backstageframe.files/addteacherdl.jsp").forward(request, response);
		}else{
			response.sendRedirect("backstageframe.files/addteachercl.jsp");
		}

	}

}
