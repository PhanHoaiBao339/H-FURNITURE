package com.DATT.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DATT.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String>{
	Category findByName(String id);
}
