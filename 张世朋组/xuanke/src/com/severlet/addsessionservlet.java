package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class addsessionservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String bh=request.getParameter("bhname");
		String name=request.getParameter("Nname");
		managedao managedao=new managedao();
		int i=managedao.addSession(bh,name);
		if(i>0){
			request.getRequestDispatcher("backstageframe.files/addsessiondl.jsp").forward(request, response);
		}else{
			response.sendRedirect("backstageframe.files/addsessioncl.jsp");
		}
		
	}

}
