package com.DATT.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.entity.Product;
import com.DATT.entity.ProductShow;
import com.DATT.service.ProductService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/product")
public class ProductRestController {
	@Autowired
	ProductService productService;

	@GetMapping("/alldata")
	public List<Product> getAll(){
		return productService.findAll();
	}
	
	@GetMapping("/allproduct")
	public List<ProductShow> getAllShow(){
		return productService.findAllShow();
	}
	
	@GetMapping("/findbycategory/{id}")
	public List<ProductShow> getProductByCategory(@PathVariable("id")String id){
		return productService.findByCategoryId(id);
	}
	
	@GetMapping("{id}")
	public Product getProductDetail(@PathVariable("id")String id){
		System.out.println(id);
		return productService.findById(id);
	}
	
}
