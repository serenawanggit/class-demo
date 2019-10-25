package com.yanyi.entity;

public class GradeDto {
	
	private Integer id;
	private Integer courseId;
	private Integer costomerId;
	private Integer score;
	
	private String courseName;
	private String costomerName;
	
	public GradeDto() {
		super();
	}
	public GradeDto(Integer id, Integer courseId, Integer costomerId,
			String courseName, String costomerName) {
		super();
		this.id = id;
		this.courseId = courseId;
		this.costomerId = costomerId;
		this.courseName = courseName;
		this.costomerName = costomerName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public Integer getCostomerId() {
		return costomerId;
	}
	public void setCostomerId(Integer costomerId) {
		this.costomerId = costomerId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCostomerName() {
		return costomerName;
	}
	public void setCostomerName(String costomerName) {
		this.costomerName = costomerName;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
}
