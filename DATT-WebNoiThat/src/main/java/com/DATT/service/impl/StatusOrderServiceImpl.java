package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.StatusOrderDAO;
import com.DATT.entity.StatusOrder;
import com.DATT.service.StatusOrderService;

@Service
public class StatusOrderServiceImpl implements StatusOrderService {
	@Autowired
	StatusOrderDAO statusOrderDAO;
	@Override
	public List<StatusOrder> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StatusOrder findById(String id) {
		// TODO Auto-generated method stub
		return statusOrderDAO.getById(id);
	}

	@Override
	public StatusOrder create(StatusOrder t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StatusOrder update(StatusOrder t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub

	}

}
