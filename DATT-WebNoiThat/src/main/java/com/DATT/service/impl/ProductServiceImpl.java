package com.DATT.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.entity.ProductShow;
import com.DATT.dao.CategoryDAO;
import com.DATT.dao.ProductDAO;
import com.DATT.entity.Product;
import com.DATT.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;

	private List<ProductShow> converterListToShow(List<Product> list) {
		List<ProductShow> show = new ArrayList<ProductShow>();
		for (Product product : list) {
			ProductShow productShow = new ProductShow(product.getId(), product.getName(), product.getPrice(),
					product.getImage1());
			show.add(productShow);
		}
		return show;
	}

	@Override
	public List<Product> findAll() {
		return productDAO.findAll();
	}

	@Override
	public List<ProductShow> findAllShow() {
		return converterListToShow(productDAO.findAll());
	}

	@Override
	public Product findById(String id) {
		return productDAO.findById(id).get();
	}

	@Override
	public Product create(Product t) {
		return null;
	}

	@Override
	public Product update(Product t) {
		return null;
	}

	@Override
	public void delete(String id) {

	}

	@Override
	public List<ProductShow> findByCategoryId(String id) {
		return converterListToShow(productDAO.findByCategory(categoryDAO.findById(id).get()));
	}

}
