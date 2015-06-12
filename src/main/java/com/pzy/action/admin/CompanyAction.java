package com.pzy.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.pzy.entity.Company;
import com.pzy.service.CompanyService;

@Namespace("/admin/company")
@ParentPackage("json-default") 
public class CompanyAction extends PageAction {
	
	private Company company;
	private String id;
	@Autowired
	private CompanyService companyService;
	
	
	@Action(value = "addcompany", results = { @Result(name = "success", location = "/WEB-INF/views/admin/company/add.jsp") }) 
	public String addcompany(){
		companyService.save(company);
		this.setTip("增加成功");
		return SUCCESS;
	}
	
	@Action(value = "get", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String get() {
		Company company=companyService.find(id);
		if(company==null){
			getResultMap().put("state", "error");
			getResultMap().put("msg", "找不到这个单位");
		}else{
			getResultMap().put("object", company);
			getResultMap().put("state", "success");
			getResultMap().put("msg", "");
		}
		return SUCCESS;
	}
 
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
