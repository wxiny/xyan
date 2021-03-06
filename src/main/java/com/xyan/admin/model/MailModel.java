package com.xyan.admin.model;

import java.util.Date;

import com.xyan.frame.base.model.BaseModel;

/**
 * @Description: 邮件实体类 xy_mail
 * @Author：wangming
 * @email：18136442251@163.com
 * @Date:2016-06-14 11:02:12
 */
public class MailModel extends BaseModel {

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.TO_USER. 目标,多个的时候用,隔开
	 */
	private String toUser;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.FROM_USER. 发送者，本系统为默认
	 */
	private String fromUser;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.CONTENT. 内容
	 */
	private String content;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.SUBJECT. 主题
	 */
	private String subject;
	
	
	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.STATE. 状态 00 初始化，10已发送
	 */
	private String state;
	
	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_mail.CREATE_TIME. 主题
	 */
	private Date createTime;

	/**
	 * This method was generated by CodeGenerator. 目标,多个的时候用,隔开
	 */
	public void setToUser(String toUser) {
		this.toUser = toUser;
	}

	/**
	 * This method was generated by CodeGenerator. 目标,多个的时候用,隔开
	 */
	public String getToUser() {
		return this.toUser;
	}

	/**
	 * This method was generated by CodeGenerator. 发送者，本系统为默认
	 */
	public void setFromUser(String fromUser) {
		this.fromUser = fromUser;
	}

	/**
	 * This method was generated by CodeGenerator. 发送者，本系统为默认
	 */
	public String getFromUser() {
		return this.fromUser;
	}

	/**
	 * This method was generated by CodeGenerator. 内容
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * This method was generated by CodeGenerator. 内容
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * This method was generated by CodeGenerator. 主题
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * This method was generated by CodeGenerator. 主题
	 */
	public String getSubject() {
		return this.subject;
	}

	/**
	 * This method was generated by CodeGenerator. 状态
	 */
	public String getState() {
		return state;
	}

	/**
	 * This method was generated by CodeGenerator. 状态
	 */
	public void setState(String state) {
		this.state = state;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	

}