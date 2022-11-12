package com.DATT.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.DATT.entity.Category;
import com.DATT.entity.Product;

public interface ProductDAO extends JpaRepository<Product, String>{

	@Query("SELECT p FROM Product p")
	List<Product> findAllProduct(Pageable pageable);
	
	List<Product> findByCategory(Category category);
}
