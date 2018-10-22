package com.chunxin.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;



/**
 * 商业聚到搭建及应用
 * 
 * @author panxia
 * @email panxia_px@163.com
 * @date 2018-10-22 11:50:16
 */
public class CommercialChannelAppEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long id;
	//期间
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Timestamp timeRange;
	//身份证号
	private String cardId;
	//姓名
	private String name;
	//服务公司
	private String company;
	//线上渠道推广完成率
	private BigDecimal onlineRate;
	//线下渠道推广成功完成率
	private BigDecimal offlineRate;
	//有效转化数量
	private BigDecimal effectiveQuantity;
	//有效用户数
	private Long effectiveUser;
	//奖励系数
	private BigDecimal rewardCoefficient;
	//项目最终所得
	private BigDecimal finalIncome;
	//创建时间
	private Timestamp createTime;

	/**
	 * 设置：
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 获取：
	 */
	public Long getId() {
		return id;
	}
	/**
	 * 设置：期间
	 */
	public void setTimeRange(Timestamp timeRange) {
		this.timeRange = timeRange;
	}
	/**
	 * 获取：期间
	 */
	public Timestamp getTimeRange() {
		return timeRange;
	}
	/**
	 * 设置：身份证号
	 */
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	/**
	 * 获取：身份证号
	 */
	public String getCardId() {
		return cardId;
	}
	/**
	 * 设置：姓名
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：姓名
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：服务公司
	 */
	public void setCompany(String company) {
		this.company = company;
	}
	/**
	 * 获取：服务公司
	 */
	public String getCompany() {
		return company;
	}
	/**
	 * 设置：线上渠道推广完成率
	 */
	public void setOnlineRate(BigDecimal onlineRate) {
		this.onlineRate = onlineRate;
	}
	/**
	 * 获取：线上渠道推广完成率
	 */
	public BigDecimal getOnlineRate() {
		return onlineRate;
	}
	/**
	 * 设置：线下渠道推广成功完成率
	 */
	public void setOfflineRate(BigDecimal offlineRate) {
		this.offlineRate = offlineRate;
	}
	/**
	 * 获取：线下渠道推广成功完成率
	 */
	public BigDecimal getOfflineRate() {
		return offlineRate;
	}
	/**
	 * 设置：有效转化数量
	 */
	public void setEffectiveQuantity(BigDecimal effectiveQuantity) {
		this.effectiveQuantity = effectiveQuantity;
	}
	/**
	 * 获取：有效转化数量
	 */
	public BigDecimal getEffectiveQuantity() {
		return effectiveQuantity;
	}
	/**
	 * 设置：有效用户数
	 */
	public void setEffectiveUser(Long effectiveUser) {
		this.effectiveUser = effectiveUser;
	}
	/**
	 * 获取：有效用户数
	 */
	public Long getEffectiveUser() {
		return effectiveUser;
	}
	/**
	 * 设置：奖励系数
	 */
	public void setRewardCoefficient(BigDecimal rewardCoefficient) {
		this.rewardCoefficient = rewardCoefficient;
	}
	/**
	 * 获取：奖励系数
	 */
	public BigDecimal getRewardCoefficient() {
		return rewardCoefficient;
	}
	/**
	 * 设置：项目最终所得
	 */
	public void setFinalIncome(BigDecimal finalIncome) {
		this.finalIncome = finalIncome;
	}
	/**
	 * 获取：项目最终所得
	 */
	public BigDecimal getFinalIncome() {
		return finalIncome;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	/**
	 * 获取：创建时间
	 */
	public Timestamp getCreateTime() {
		return createTime;
	}
}
