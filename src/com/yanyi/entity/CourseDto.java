package com.yanyi.entity;

import java.sql.Date;


public class CourseDto {
	private Integer id;
	private String name;
	private String video;
	private String image;
	private double price;
	private Integer courseTypeId;
	private Integer isFlag;
	private String remark;
	private Date updateTime;
	private String detail;
	
	//订单状态
	private Integer state;
	
	private Integer pageSize;//
	private Integer totalCount;//开始行数
	
	public CourseDto() {
		super();
	}
	public CourseDto(Integer id, double price) {
		super();
		this.id = id;
		this.price = price;
	}
	public CourseDto(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public CourseDto(Integer id, String name, String video, String image,
			double price, Integer courseTypeId, Integer isFlag) {
		super();
		this.id = id;
		this.name = name;
		this.video = video;
		this.image = image;
		this.price = price;
		this.courseTypeId = courseTypeId;
		this.isFlag = isFlag;
	}
	public CourseDto(Integer id, String name, String video, String image,
			double price, Integer courseTypeId, Integer isFlag, String remark,
			Date updateTime, Integer pageSize, Integer totalCount) {
		super();
		this.id = id;
		this.name = name;
		this.video = video;
		this.image = image;
		this.price = price;
		this.courseTypeId = courseTypeId;
		this.isFlag = isFlag;
		this.remark = remark;
		this.updateTime = updateTime;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
	}
	public CourseDto(Integer id, String name, String video, String image,
			double price, String remark, Integer pageSize, Integer totalCount) {
		super();
		this.id = id;
		this.name = name;
		this.video = video;
		this.image = image;
		this.price = price;
		this.remark = remark;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
	}
	public CourseDto(String remark, Integer pageSize, Integer totalCount) {
		super();
		this.remark = remark;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
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
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Integer getCourseTypeId() {
		return courseTypeId;
	}
	public void setCourseTypeId(Integer courseTypeId) {
		this.courseTypeId = courseTypeId;
	}
	public Integer getIsFlag() {
		return isFlag;
	}
	public void setIsFlag(Integer isFlag) {
		this.isFlag = isFlag;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
}
