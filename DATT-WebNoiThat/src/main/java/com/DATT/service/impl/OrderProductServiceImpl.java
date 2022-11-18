package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.OrderProductDAO;
import com.DATT.entity.OrderProduct;
import com.DATT.service.OrderProductService;

@Service
public class OrderProductServiceImpl implements OrderProductService{
	@Autowired
	OrderProductDAO orderProductDAO;
	
	@Override
	public List<OrderProduct> findAll() {
		// TODO Auto-generated method stub
		return orderProductDAO.findAll();
	}

	@Override
	public OrderProduct findById(Long id) {
		// TODO Auto-generated method stub
		return orderProductDAO.getById(id);
	}

	@Override
	public OrderProduct create(OrderProduct t) {
		// TODO Auto-generated method stub
		return orderProductDAO.save(t);
	}

	@Override
	public OrderProduct update(OrderProduct t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

}
