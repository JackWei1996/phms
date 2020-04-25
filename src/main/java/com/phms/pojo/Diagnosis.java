package com.phms.pojo;

import java.util.Date;

public class Diagnosis extends BaseBean {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Long id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.pet_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Long petId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.user_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Long userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.doctor_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Long doctorId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.info
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private String info;
    private String name;
    private String doctorName;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.type
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Integer type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.status
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Integer status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column diagnosis.create_time
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    private Date createTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.id
     *
     * @return the value of diagnosis.id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.id
     *
     * @param id the value for diagnosis.id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.pet_id
     *
     * @return the value of diagnosis.pet_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Long getPetId() {
        return petId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.pet_id
     *
     * @param petId the value for diagnosis.pet_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setPetId(Long petId) {
        this.petId = petId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.user_id
     *
     * @return the value of diagnosis.user_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.user_id
     *
     * @param userId the value for diagnosis.user_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.doctor_id
     *
     * @return the value of diagnosis.doctor_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Long getDoctorId() {
        return doctorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.doctor_id
     *
     * @param doctorId the value for diagnosis.doctor_id
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setDoctorId(Long doctorId) {
        this.doctorId = doctorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.info
     *
     * @return the value of diagnosis.info
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public String getInfo() {
        return info;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.info
     *
     * @param info the value for diagnosis.info
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.type
     *
     * @return the value of diagnosis.type
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.type
     *
     * @param type the value for diagnosis.type
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.status
     *
     * @return the value of diagnosis.status
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.status
     *
     * @param status the value for diagnosis.status
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column diagnosis.create_time
     *
     * @return the value of diagnosis.create_time
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column diagnosis.create_time
     *
     * @param createTime the value for diagnosis.create_time
     *
     * @mbg.generated Mon Apr 06 17:03:33 CST 2020
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}