package com.rest.API.repository;

import java.util.List;

import com.rest.API.model.Module;

public interface ModuleCustomRepository {

	List<Module> getByUserId(Long UserId);
}
