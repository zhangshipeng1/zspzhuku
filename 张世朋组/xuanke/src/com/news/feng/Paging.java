package com.news.feng;

public class Paging {
	private int page;// ��ǰҳ
	private int pagesize;// ҳ����������
	private int indexpage = 1;// ��ҳ
	private int endpage;// βҳ
	private int count;// ����������
	private int pagenumber;// ��ҳ����
	// private List<Goods> list;//�õ������ݷ���list������

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getIndexpage() {
		return indexpage;
	}

	public void setIndexpage(int indexpage) {
		this.indexpage = indexpage;
	}

	public int getEndpage() {

		return endpage;
	}

	public void setEndpage() {
		this.endpage = pagenumber;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPagenumber() {
		return pagenumber;
	}

	public void setPagenumber() {
		this.pagenumber = (count % pagesize == 0) ? count / pagesize : count / pagesize + 1;
	}

}


