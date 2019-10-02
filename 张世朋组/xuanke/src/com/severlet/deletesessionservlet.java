package com.severlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class deletesessionservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sessioncno=request.getParameter("sessioncno");
		managedao manage=new managedao();
		int flag=manage.deletesession(sessioncno);
		if(flag>0){
			request.getRequestDispatcher("backstageframe.files/deletesessiondl.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("backstageframe.files/deletesessioncl.jsp").forward(request, response);
		}
	}

}
