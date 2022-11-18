package com.DATT.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.entity.SubstanceDetail;
import com.DATT.service.SubstanceDetailService;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/substacedetail")
public class SubstanceDetailRestController {

	@Autowired
	SubstanceDetailService substanceDetailService;
	
	@GetMapping("/alldata")
	public List<SubstanceDetail> getAll(){
		return substanceDetailService.findAll();
	}
}
