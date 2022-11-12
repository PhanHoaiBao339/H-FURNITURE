package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.CategoryDAO;
import com.DATT.dao.ProductDAO;
import com.DATT.entity.Category;
import com.DATT.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;

	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

	@Override
	public Category findById(String id) {
		return categoryDAO.findById(id).get();
	}

	@Override
	public Category create(Category t) {
		return categoryDAO.save(t);
	}

	@Override
	public Category update(Category t) {
		return categoryDAO.save(t);
	}

	@Override
	public void delete(String id) {
		categoryDAO.deleteById(id);;
	}


}
