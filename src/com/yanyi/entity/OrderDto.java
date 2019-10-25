package com.yanyi.entity;

public class OrderDto {
    
    private Integer id;

    private String courseId;

    private String costomerId;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCostomerId() {
		return costomerId;
	}

	public void setCostomerId(String costomerId) {
		this.costomerId = costomerId;
	}
}