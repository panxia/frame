package com.chunxin.entity;

import com.ffcs.utils.ExcelUtil.ExcelCell;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;



/**
 * 税务申报
 *
 * @author panxia
 * @email panxia_px@163.com
 * @date 2018-10-16 17:54:58
 */

public class TaxDeclarationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//
	private Long id;
	//收款人
	@ExcelCell(index = 1)
	private String payee;
	//银行账号
	@ExcelCell(index = 2)
	private String bankAccount;
	//开户行
	@ExcelCell(index = 3)
	private String openBank;
	//开户地
	@ExcelCell(index = 4)
	private String openPlace;
	//劳务人员
	@ExcelCell(index = 5)
	private String labourPerson;
	//劳务人员身份证号
	@ExcelCell(index = 6)
	private String labourCardid;
	//劳务人员手机号码
	@ExcelCell(index = 7)
	private String labourPhone;
	//服务项目
	@ExcelCell(index = 9)
	private String serviceItem;
	//服务时间
	@ExcelCell(index = 8)
	private String serviceTime;
	//税前
	@ExcelCell(index = 10,defaultValue = "0")
	private BigDecimal preTax;
	//税后
	@ExcelCell(index = 11,defaultValue = "0")
	private BigDecimal afterTax;
	//实际付款
	@ExcelCell(index = 12,defaultValue = "0")
	private BigDecimal actualPayment;

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
	 * 设置：收款人
	 */
	public void setPayee(String payee) {
		this.payee = payee;
	}
	/**
	 * 获取：收款人
	 */
	public String getPayee() {
		return payee;
	}
	/**
	 * 设置：银行账号
	 */
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	/**
	 * 获取：银行账号
	 */
	public String getBankAccount() {
		return bankAccount;
	}
	/**
	 * 设置：开户行
	 */
	public void setOpenBank(String openBank) {
		this.openBank = openBank;
	}
	/**
	 * 获取：开户行
	 */
	public String getOpenBank() {
		return openBank;
	}
	/**
	 * 设置：开户地
	 */
	public void setOpenPlace(String openPlace) {
		this.openPlace = openPlace;
	}
	/**
	 * 获取：开户地
	 */
	public String getOpenPlace() {
		return openPlace;
	}
	/**
	 * 设置：劳务人员
	 */
	public void setLabourPerson(String labourPerson) {
		this.labourPerson = labourPerson;
	}
	/**
	 * 获取：劳务人员
	 */
	public String getLabourPerson() {
		return labourPerson;
	}
	/**
	 * 设置：劳务人员身份证号
	 */
	public void setLabourCardid(String labourCardid) {
		this.labourCardid = labourCardid;
	}
	/**
	 * 获取：劳务人员身份证号
	 */
	public String getLabourCardid() {
		return labourCardid;
	}
	/**
	 * 设置：劳务人员手机号码
	 */
	public void setLabourPhone(String labourPhone) {
		this.labourPhone = labourPhone;
	}
	/**
	 * 获取：劳务人员手机号码
	 */
	public String getLabourPhone() {
		return labourPhone;
	}
	/**
	 * 设置：服务项目
	 */
	public void setServiceItem(String serviceItem) {
		this.serviceItem = serviceItem;
	}
	/**
	 * 获取：服务项目
	 */
	public String getServiceItem() {
		return serviceItem;
	}
	/**
	 * 设置：服务时间
	 */
	public void setServiceTime(String serviceTime) {
		this.serviceTime = serviceTime;
	}
	/**
	 * 获取：服务时间
	 */
	public String getServiceTime() {
		return serviceTime;
	}
	/**
	 * 设置：税前
	 */
	public void setPreTax(BigDecimal preTax) {
		this.preTax = preTax;
	}
	/**
	 * 获取：税前
	 */
	public BigDecimal getPreTax() {
		return preTax;
	}
	/**
	 * 设置：税后
	 */
	public void setAfterTax(BigDecimal afterTax) {
		this.afterTax = afterTax;
	}
	/**
	 * 获取：税后
	 */
	public BigDecimal getAfterTax() {
		return afterTax;
	}
	/**
	 * 设置：实际付款
	 */
	public void setActualPayment(BigDecimal actualPayment) {
		this.actualPayment = actualPayment;
	}
	/**
	 * 获取：实际付款
	 */
	public BigDecimal getActualPayment() {
		return actualPayment;
	}
}
