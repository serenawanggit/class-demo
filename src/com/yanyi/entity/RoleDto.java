package com.yanyi.entity;

public class RoleDto {
	Integer id;
	String name;
	Integer parentId;
	
	public RoleDto() {
		super();
	}
	public RoleDto(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public RoleDto(Integer id, String name, Integer parentId) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
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
	
	
}
