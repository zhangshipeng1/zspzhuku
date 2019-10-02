package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managedao;

public class updatescore extends HttpServlet {

	
	public updatescore() {
		super();
	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String sno=request.getParameter("sno");
		String cno=request.getParameter("cno");
		String score=request.getParameter("score");
		int i=managedao.updatescore(sno, cno, score);
		if(i>0){
			request.getRequestDispatcher("backstageframe.files/update_success.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("backstageframe.files/update_failure.jsp").forward(request, response);
		}
	
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
