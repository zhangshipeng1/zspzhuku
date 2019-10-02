package com.severlet.teacher;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dor.managerdao;
import com.news.dor.teacherdao;
import com.news.feng.Paging;
import com.news.feng.student;
import com.news.feng.teacher;

public class professionfenye extends HttpServlet {

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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = (String) this.getServletContext().getAttribute("name");// 获取全局变量里得值
		List<teacher> list = new ArrayList<>();

		try {
			list = teacherdao.selectprofession(name);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 页面当前页
		int page = 0;
		// 得到传过来的当前页
		String str_page = request.getParameter("page");
		Paging paging = new Paging();
		paging.setCount(list.size());// 数据总数
		paging.setPagesize(8);// 一个页面的数据多少条
		paging.setPagenumber();// 总的页面数
		paging.setEndpage();// 最后一页
		paging.setIndexpage(1);// 第一页
		if (str_page != null) {
			// 将页转换整型判断其大小
			int pag = Integer.parseInt(str_page);
			// 当大于零，将传过来的pag值赋给当前页page
			if (pag >= 0) {
				page = pag;
				// 如果小于最大值时则，将其传过来的值减1再赋值给当前页，让其一直在最后一页
				if (pag > (paging.getPagenumber() - 1)) {
					page = pag - 1;
				}
			}
		}
		paging.setPage(page);// 最终确认当前页
		List<teacher> list_page = new ArrayList<>();
		if (list.size() != 0) {
			// 将当前页的值传给新的list_page集合中，list集合是全部数据综合，用i调用其中的几条数据给list_page
			for (int i = paging.getPage() * paging.getPagesize(); i < (paging
					.getPage() + 1) * paging.getPagesize()
					&& i < list.size(); i++) {
				list_page.add(list.get(i));
			}
			request.setAttribute("paging", paging);
			request.setAttribute("list", list_page);
			request.setAttribute("teacherlist", list);
			request.getRequestDispatcher("teacher/selectprofession.jsp")
					.forward(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
