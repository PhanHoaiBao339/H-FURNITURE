package com.DATT.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.entity.Category;
import com.DATT.service.CategoryService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/category")
public class CategoryRestController {
	@Autowired
	CategoryService categoryService;
	
	@GetMapping("/all")
	public List<Category> getAll(){
		return categoryService.findAll();
	}
	
}
