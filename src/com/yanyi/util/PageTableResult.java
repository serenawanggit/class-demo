package com.yanyi.util;

import java.util.List;
import java.util.Map;

public class PageTableResult {
	private Integer code;
	private String msg;
	private Integer count;
	private List<?> data;
	private Map<String, ?> uploadData;
	
	
	public PageTableResult() {
		super();
	}
	public PageTableResult(Integer code, String msg, Integer count,
			List<?> data, Map<String, ?> uploadData) {
		super();
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
		this.uploadData = uploadData;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public List<?> getData() {
		return data;
	}
	public void setData(List<?> data) {
		this.data = data;
	}
	public Map<String, ?> getUploadData() {
		return uploadData;
	}
	public void setUploadData(Map<String, ?> uploadData) {
		this.uploadData = uploadData;
	}
}
