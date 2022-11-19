package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.SubstanceProductsDAO;
import com.DATT.entity.SubstanceProducts;
import com.DATT.service.SubstanceProductsService;

@Service
public class SubstanceProductsServiceImpl implements SubstanceProductsService{

	@Autowired
	SubstanceProductsDAO substanceProductsDAO;
	
	@Override
	public List<SubstanceProducts> findAll() {
		return substanceProductsDAO.findAll();
	}

	@Override
	public SubstanceProducts findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubstanceProducts create(SubstanceProducts t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubstanceProducts update(SubstanceProducts t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

}
