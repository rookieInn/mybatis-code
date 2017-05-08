package com.my.demo;

import java.io.Serializable;

/**
 * 分页参数
 */
public class Pager implements Serializable {

	private static final long serialVersionUID = 1L;

	private int pageId = 1; // 当前页
	private int rowCount = 0; // 总行数
	private int pageSize = 10; // 页大小
	private int pageCount = 0; // 总页数
	private int pageOffset = 0;// 当前页起始记录

	protected void doPage() {
		this.pageCount = this.rowCount / this.pageSize + 1;
		if ((this.rowCount % this.pageSize == 0) && pageCount > 1)
			this.pageCount--;

		this.pageOffset = (this.pageId - 1) * this.pageSize;
	}

	public String getMysqlQueryCondition() {
		this.pageOffset = (this.pageId - 1) * this.pageSize;
		return " limit " + pageOffset + "," + pageSize;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public int getPageId() {
		return pageId;
	}

	public void setPageOffset(int pageOffset) {
		this.pageOffset = pageOffset;
	}

	public int getPageOffset() {
		return pageOffset;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
		this.doPage();
	}

	public int getRowCount() {
		return rowCount;
	}

}