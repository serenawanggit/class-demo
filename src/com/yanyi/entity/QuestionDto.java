package com.yanyi.entity;

public class QuestionDto {

	private Integer id;
	private String problem;
	private String options;
	private String answer;
	private Integer courseId;
	private Integer type;
	private Integer isFlag;
	private Integer score;
	
	private String course;
	
	public QuestionDto() {
		super();
	}
	
	public QuestionDto(Integer id, String problem, String options,
			String answer, Integer courseId, Integer type) {
		super();
		this.id = id;
		this.problem = problem;
		this.options = options;
		this.answer = answer;
		this.courseId = courseId;
		this.type = type;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public Integer getIsFlag() {
		return isFlag;
	}

	public void setIsFlag(Integer isFlag) {
		this.isFlag = isFlag;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}
}
