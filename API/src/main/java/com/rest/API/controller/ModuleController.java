package com.rest.API.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.rest.API.model.Module;
import com.rest.API.model.ModuleDto;
import com.rest.API.repository.ModuleRepository;

@RestController
public class ModuleController {

	@Autowired ModuleRepository moduleRepository;
	
	 @GetMapping("/module")
	    public List<Module> getAllNotes() {
	        return moduleRepository.findAll();
	    }
	 
	 @GetMapping("/module/{userId}")
	 public List<ModuleDto> getByUserId(@PathVariable(value = "userId") Long userId) {
		 
		 List<Module> module = moduleRepository.getByUserId(userId);
		 List<ModuleDto> modules = new ArrayList<>();
		 
		 for (Module module2 : module) {
			ModuleDto m = new ModuleDto();
			m.setModuleName(module2.getModuleName());
			m.setModuleOrder(module2.getModuleOrder());
			modules.add(m);
		}
		 
		return modules;
		 
	 }
}
