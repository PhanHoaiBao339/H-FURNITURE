package com.DATT.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DATT.dao.AccountDAO;
import com.DATT.entity.Account;
import com.DATT.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountDAO accountDAO;

	@Override
	public List<Account> findAll() {
		return accountDAO.findAll();
	}

	@Override
	public Account findById(String id) {
		return accountDAO.getById(id);
	}

	@Override
	public Account create(Account t) {	
		return accountDAO.save(t);
	}

	@Override
	public Account update(Account t) {
		return accountDAO.save(t);
	}

	@Override
	public void delete(String id) {
		accountDAO.deleteById(id);
	}

	@Override
	public boolean existsById(String id) {
		
		return false;
	}

	@Override
	public boolean existsByUsername(String username) {
		
		return false;
	}

	@Override
	public boolean existsByEmail(String email) {
		
		return false;
	}

	@Override
	public Account findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
