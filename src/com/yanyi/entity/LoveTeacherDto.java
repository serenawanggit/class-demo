package com.yanyi.entity;

public class LoveTeacherDto {
   
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCostomer_id() {
		return costomer_id;
	}

	public void setCostomer_id(String costomer_id) {
		this.costomer_id = costomer_id;
	}

	public String getTeacher_id() {
		return Teacher_id;
	}

	public void setTeacher_id(String Teacher_id) {
		this.Teacher_id = Teacher_id;
	}

	private Integer id;

    private String costomer_id;

    private String Teacher_id;

   
}