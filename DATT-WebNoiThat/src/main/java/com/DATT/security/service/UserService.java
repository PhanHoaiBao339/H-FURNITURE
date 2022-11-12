package com.DATT.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.DATT.dao.AccountDAO;
import com.DATT.entity.Account;

@Service
public class UserService implements UserDetailsService {
	@Autowired
	AccountDAO dao;
	@Autowired
	BCryptPasswordEncoder pe;

	@Bean
	public BCryptPasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {

		try {
			Account account;
			if (dao.existsByEmail(usernameOrEmail)) {
				account = dao.findByEmail(usernameOrEmail);
			} else {
				account = dao.findById(usernameOrEmail).get();
			}
			return CustomUserDetail.build(account);
		} catch (Exception e) {
			throw new UsernameNotFoundException("Not found!");
		}
	}

}
