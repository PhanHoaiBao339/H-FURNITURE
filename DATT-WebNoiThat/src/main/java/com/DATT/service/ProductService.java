package com.DATT.service;

import java.util.List;

import com.DATT.entity.Product;
import com.DATT.entity.ProductShow;

public interface ProductService extends AbstractService<Product, String>{
	public List<ProductShow> findAllShow();
	
	public List<ProductShow> findByCategoryId(String id);
	
}
