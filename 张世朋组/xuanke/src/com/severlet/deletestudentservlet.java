package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class deletestudentservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String studentsno= request.getParameter("studentsno");
		managedao manage=new managedao();
		int flag=manage.deletestudent(studentsno);
		if(flag>0){
			request.getRequestDispatcher("backstageframe.files/deletestudentdl.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("backstageframe.files/deletestudentcl.jsp").forward(request, response);
		}
		
	}

}
