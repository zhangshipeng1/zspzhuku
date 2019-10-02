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
		String name = (String) this.getServletContext().getAttribute("name");// ��ȡȫ�ֱ������ֵ
		List<teacher> list = new ArrayList<>();

		try {
			list = teacherdao.selectprofession(name);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// ҳ�浱ǰҳ
		int page = 0;
		// �õ��������ĵ�ǰҳ
		String str_page = request.getParameter("page");
		Paging paging = new Paging();
		paging.setCount(list.size());// ��������
		paging.setPagesize(8);// һ��ҳ������ݶ�����
		paging.setPagenumber();// �ܵ�ҳ����
		paging.setEndpage();// ���һҳ
		paging.setIndexpage(1);// ��һҳ
		if (str_page != null) {
			// ��ҳת�������ж����С
			int pag = Integer.parseInt(str_page);
			// �������㣬����������pagֵ������ǰҳpage
			if (pag >= 0) {
				page = pag;
				// ���С�����ֵʱ�򣬽��䴫������ֵ��1�ٸ�ֵ����ǰҳ������һֱ�����һҳ
				if (pag > (paging.getPagenumber() - 1)) {
					page = pag - 1;
				}
			}
		}
		paging.setPage(page);// ����ȷ�ϵ�ǰҳ
		List<teacher> list_page = new ArrayList<>();
		if (list.size() != 0) {
			// ����ǰҳ��ֵ�����µ�list_page�����У�list������ȫ�������ۺϣ���i�������еļ������ݸ�list_page
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
