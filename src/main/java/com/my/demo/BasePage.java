package com.my.demo;

import java.io.Serializable;
import java.util.Date;


public class BasePage implements Serializable,Cloneable{
	
	private static final long serialVersionUID = 1L;

	private Integer page = 1;
	
	private Integer rows =10;

	private Date startDate;
	
	private Date endDate;

	/**
	 * 分页导航
	 */
	private Pager pager = new Pager();

	public Pager getPager() {
		pager.setPageId(getPage());
		pager.setPageSize(getRows());
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

}
