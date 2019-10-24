package com.yanyi.entity;

public class OrderDto {
    
    private Integer id;

    private String courseId;

    private String costomerId;

    private Integer isFinal;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getIsFinal() {
        return isFinal;
    }

    public void setIsFinal(Integer isFinal) {
        this.isFinal = isFinal;
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