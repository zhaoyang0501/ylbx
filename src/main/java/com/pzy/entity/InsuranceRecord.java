package com.pzy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "t_InsuranceRecord")
public class InsuranceRecord {
	@Id
	@GenericGenerator(name = "paymentableGenerator", strategy = "assigned")  
	@Column(length=40)
	private Integer id;
	private String month;
	@ManyToOne(fetch = FetchType.EAGER)
	private People people;
	private Double pay;
	private Double ratio;
	private Double companypart;
	private Double peoplepart;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public People getPeople() {
		return people;
	}
	public void setPeople(People people) {
		this.people = people;
	}
	public Double getPay() {
		return pay;
	}
	public void setPay(Double pay) {
		this.pay = pay;
	}
	public Double getRatio() {
		return ratio;
	}
	public void setRatio(Double ratio) {
		this.ratio = ratio;
	}
	public Double getCompanypart() {
		return companypart;
	}
	public void setCompanypart(Double companypart) {
		this.companypart = companypart;
	}
	public Double getPeoplepart() {
		return peoplepart;
	}
	public void setPeoplepart(Double peoplepart) {
		this.peoplepart = peoplepart;
	}
}
