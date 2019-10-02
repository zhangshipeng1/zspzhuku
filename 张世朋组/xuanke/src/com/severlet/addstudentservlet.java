package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class addstudentservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String xh=request.getParameter("xhname");
		String name=request.getParameter("Nname");
		String sex=request.getParameter("sexname");
		String password=request.getParameter("pwname");
		String zy=request.getParameter("zyname");
		managedao managedao=new managedao();
		int i=managedao.addStudent(xh,name,sex,password,zy);
		if(i>0){
			request.getRequestDispatcher("backstageframe.files/addstudentdl.jsp").forward(request, response);
		}else{
			response.sendRedirect("backstageframe.files/addstudentcl.jsp");
		}
		
	}

}
