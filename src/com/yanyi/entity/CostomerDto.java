package com.yanyi.entity;

public class CostomerDto {
   
    private Integer id;

    private String name;

    private String password;

    private String phone;
    
    public CostomerDto(){
    	super();
    }
    //修改客户姓名
    public CostomerDto(Integer id, String name ) {
		 super();
		 this.id =id;
		 this.name = name;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column study_costomer.password
     *
     * @param password the value for study_costomer.password
     *
     * @mbggenerated Fri Oct 11 11:00:24 CST 2019
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column study_costomer.phone
     *
     * @return the value of study_costomer.phone
     *
     * @mbggenerated Fri Oct 11 11:00:24 CST 2019
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column study_costomer.phone
     *
     * @param phone the value for study_costomer.phone
     *
     * @mbggenerated Fri Oct 11 11:00:24 CST 2019
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}