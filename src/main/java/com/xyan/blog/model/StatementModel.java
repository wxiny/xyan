package com.xyan.blog.model;

import com.xyan.frame.base.model.BaseModel;

/**
 * @Description: 闲言碎语 实体类 xy_statement
 * @Author：wangming
 * @email：w18855525068@163.com
 * @Date:2016-06-16 15:07:58
 */
public class StatementModel extends BaseModel {

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_statement.TITLE. 标题
	 */
	private String title;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_statement.CONTENT. 内容
	 */
	private String content;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_statement.CREATE_TIME. 创建时间
	 */
	private String createTime;

	/**
	 * This field was generated by CodeGenerator. This field corresponds to the
	 * database column xy_statement.UPDATE_TIME. 更新时间
	 */
	private String updateTime;

	/**
	 * This method was generated by CodeGenerator. 标题
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * This method was generated by CodeGenerator. 标题
	 */
	public String getTitle() {
		return this.title;
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
	 * This method was generated by CodeGenerator. 创建时间
	 */
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	/**
	 * This method was generated by CodeGenerator. 创建时间
	 */
	public String getCreateTime() {
		return this.createTime;
	}

	/**
	 * This method was generated by CodeGenerator. 更新时间
	 */
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * This method was generated by CodeGenerator. 更新时间
	 */
	public String getUpdateTime() {
		return this.updateTime;
	}

}