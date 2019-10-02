package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class updatestudentservlet extends HttpServlet {

	
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
		String pw=request.getParameter("pwname");
		managedao manage = new managedao();
		int flag=manage.updatestudent(xh,name,sex,pw);
		if(flag>0){
			request.getRequestDispatcher("backstageframe.files/updatestudentdl.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("backstageframe.files/updatestudentcl.jsp").forward(request, response);
		}
	}

}
