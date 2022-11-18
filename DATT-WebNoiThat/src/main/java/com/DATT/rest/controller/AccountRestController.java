package com.DATT.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.entity.Account;
import com.DATT.service.AccountService;

@CrossOrigin("*")
@RestController
@PreAuthorize("hasRole('ADMIN')")
@RequestMapping("/api/account")
public class AccountRestController {

	@Autowired
	AccountService accountService;
	
	@GetMapping("/allaccountdata")
	public List<Account> getAll(){
		return accountService.findAll();
	}
}
