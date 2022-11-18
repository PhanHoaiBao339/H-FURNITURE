package com.DATT.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.entity.SubstanceProducts;
import com.DATT.service.SubstanceProductsService;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/substace")
public class SubstanceRestController {

	@Autowired
	SubstanceProductsService substanceProductsService;
	
	@GetMapping("/alldata")
	public List<SubstanceProducts> getAll(){
		return substanceProductsService.findAll();
	}
}
