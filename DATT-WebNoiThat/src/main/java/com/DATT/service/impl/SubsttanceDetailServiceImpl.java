package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.SubstanceDetailDAO;
import com.DATT.entity.SubstanceDetail;
import com.DATT.service.SubstanceDetailService;

@Service
public class SubsttanceDetailServiceImpl implements SubstanceDetailService{

	@Autowired
	SubstanceDetailDAO substanceDetailDAO;
	
	@Override
	public List<SubstanceDetail> findAll() {
		// TODO Auto-generated method stub
		return substanceDetailDAO.findAll();
	}

	@Override
	public SubstanceDetail findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubstanceDetail create(SubstanceDetail t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubstanceDetail update(SubstanceDetail t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

}
