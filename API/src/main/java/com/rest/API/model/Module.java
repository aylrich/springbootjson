package com.rest.API.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "module")
public class Module {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long moduleId;
	
	@Column(name="moduleName")
    private String moduleName;
	
	@Column(name="moduleOrder")
    private Long moduleOrder;
	
	@Column(name="userId")
    private Long userId;

	public Module() {
		super();
	}

	public Long getModuleId() {
		return moduleId;
	}

	public void setModuleId(Long moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public Long getModuleOrder() {
		return moduleOrder;
	}

	public void setModuleOrder(Long moduleOrder) {
		this.moduleOrder = moduleOrder;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Module(Long moduleId, String moduleName, Long moduleOrder, Long userId) {
		super();
		this.moduleId = moduleId;
		this.moduleName = moduleName;
		this.moduleOrder = moduleOrder;
		this.userId = userId;
	}
	
	
	
}
