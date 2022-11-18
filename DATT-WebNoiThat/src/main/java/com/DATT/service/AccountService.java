package com.DATT.service;

import com.DATT.entity.Account;

public interface AccountService extends AbstractService<Account, String>{

	public boolean existsById(String id);
	boolean existsByUsername(String username);
	boolean existsByEmail(String email);
	public Account findByEmail(String email);
	
	
	
}
