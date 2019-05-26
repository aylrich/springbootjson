package com.rest.API.model;

public class ModuleDto {

	private String moduleName;
	private Long moduleOrder;
	
	public ModuleDto() {
		super();
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

	public ModuleDto(String moduleName, Long moduleOrder) {
		super();
		this.moduleName = moduleName;
		this.moduleOrder = moduleOrder;
	}
	
}
