package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.news.dor.managerdao;
import com.news.feng.student;

public class xuankeservlet extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cno =request.getParameter("cno");
        String Gh =request.getParameter("gh");
        HttpSession session=request.getSession();
       String sno= (String) session.getAttribute("us1");
       List<student> selectgh=managerdao.selecgh(cno);
       List<student> list=managerdao.selectbijiao();
       
   if(cno==""||Gh==""){
	   response.sendRedirect("/xuanke/xuanke.jsp?bool=no");
	   return;
   }
 
    	      for(student gh:selectgh){
    	    	   if(Gh.equals(gh.getGh())){
    	    		  //进行添加操作
    	    		 int a=managerdao.insertxuanke(cno, Gh, sno);
    
    	    		 if(a>0){
    	    			 response.sendRedirect("/xuanke/xuanke.jsp?bool=true");
    	    			 return;
    	    		 }
    	    		 else{
    	    			 response.sendRedirect("/xuanke/xuanke.jsp?bool=false"); 
    	    			 return;
    	    		 }
    	    		
    	    	   } 
    	    	   
	    			 }
    	      response.sendRedirect("/xuanke/xuanke.jsp?bool=bufu");return;
    	    	  
    	    	  
    	       }
       
     
	

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
