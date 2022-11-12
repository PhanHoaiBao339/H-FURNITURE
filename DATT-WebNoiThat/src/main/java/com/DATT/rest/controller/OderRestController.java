package com.DATT.rest.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.dao.AccountDAO;
import com.DATT.entity.Account;
import com.DATT.entity.OrderProduct;
import com.DATT.entity.OrderProductDetail;
import com.DATT.entity.Product;
import com.DATT.entity.StatusOrder;
import com.DATT.payload.OderDetailRequest;
import com.DATT.payload.OderRequest;
import com.DATT.payload.ResponseMessage;
import com.DATT.payload.ShopCartList;
import com.DATT.service.AccountService;
import com.DATT.service.OrderProductDetailService;
import com.DATT.service.OrderProductService;
import com.DATT.service.ProductService;
import com.DATT.service.StatusOrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/checkout")
public class OderRestController {
	@Autowired
	OrderProductService orderProductService;
	@Autowired
	OrderProductDetailService orderProductDetailService;
	@Autowired
	AccountService accountService;
	@Autowired
	StatusOrderService statusOrderService;
	@Autowired
	ProductService productService;
	@Autowired
	AccountDAO accountDAO;

	@PostMapping("/saveorder")
	public OrderProduct saveorder(@RequestBody OderRequest orderRequest) {
		System.out.println(orderRequest);
		String username=orderRequest.getUsername();
		Account account = accountService.findById(username);
		StatusOrder statusOrder = statusOrderService.findById("DHN");
//		System.out.println(statusOrder);
		OrderProduct order = new OrderProduct(account, orderRequest.getFullname(), new Date(),
				orderRequest.getAddress(), orderRequest.getPhone(), orderRequest.getNote(),
				orderRequest.getPaymentmethod(), statusOrder, null);
		return orderProductService.create(order);
	}

	@PostMapping("/saveorderdetail")
	public ResponseEntity<?> saveorderdetail(@RequestBody OderDetailRequest oderDetailRequest) {
		
		System.out.println(oderDetailRequest);
		OrderProduct orderProduct = orderProductService.findById(oderDetailRequest.getOrderid());
		for (ShopCartList item : oderDetailRequest.getList()) {
			Product product = productService.findById(item.getProduct().getId());
			orderProductDetailService.create(
					new OrderProductDetail(null, item.getTotalPrice(), item.getQuantity(), orderProduct, product));
		}
		return ResponseEntity.ok(new ResponseMessage(true, "Order Success!"));
	}

}
