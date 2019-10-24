package com.yanyi.entity;

public class LoveDto {
   
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

	public String getCourse_id() {
		return course_id;
	}

	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}

	private Integer id;

    private String costomer_id;

    private String course_id;

   
}