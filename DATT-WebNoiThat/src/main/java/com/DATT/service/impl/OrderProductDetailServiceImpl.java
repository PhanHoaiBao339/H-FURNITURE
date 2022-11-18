package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.OrderProductDetailDAO;
import com.DATT.entity.OrderProductDetail;
import com.DATT.service.OrderProductDetailService;

@Service
public class OrderProductDetailServiceImpl implements OrderProductDetailService{
	@Autowired
	OrderProductDetailDAO orderProductDetailDAO;
	
	@Override
	public List<OrderProductDetail> findAll() {
		// TODO Auto-generated method stub
		return orderProductDetailDAO.findAll();
	}

	@Override
	public OrderProductDetail findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderProductDetail create(OrderProductDetail t) {
		// TODO Auto-generated method stub
		return orderProductDetailDAO.save(t);
	}

	@Override
	public OrderProductDetail update(OrderProductDetail t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

}
