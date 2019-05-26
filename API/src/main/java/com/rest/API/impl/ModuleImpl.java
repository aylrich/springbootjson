package com.rest.API.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.rest.API.model.Module;
import com.rest.API.repository.ModuleCustomRepository;

public class ModuleImpl implements ModuleCustomRepository {

	@PersistenceContext
    EntityManager entityManager;
	
	@Override
	public List<Module> getByUserId(Long UserId) {
		
		Query query = entityManager.createNativeQuery("Select * from module where user_id = ?", Module.class);
		query.setParameter(1, UserId);
		
		return query.getResultList();
	}

}
