package com.yanyi.entity;

public class CourseTypeDto {
	Integer id;
	String name;
	Integer parentId;
	Integer isFlag;
	
	public CourseTypeDto() {
		super();
	}
	public CourseTypeDto(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public CourseTypeDto(Integer id, String name, Integer isFlag) {
		super();
		this.id = id;
		this.name = name;
		this.isFlag = isFlag;
	}
	public CourseTypeDto(Integer id, Integer isFlag) {
		super();
		this.id = id;
		this.isFlag = isFlag;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getIsFlag() {
		return isFlag;
	}
	public void setIsFlag(Integer isFlag) {
		this.isFlag = isFlag;
	}
	
	
}
