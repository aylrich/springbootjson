package com.rest.API.repository;

import com.rest.API.model.Module;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface ModuleRepository extends JpaRepository<Module, Long>, ModuleCustomRepository{

}
