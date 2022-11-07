package com.DATT.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@Table(name = "OrderDetails")
public class OrderProductDetail implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Double price;
	private Integer quantity;
	@ManyToOne
	@JoinColumn(name = "Orderid")
	private OrderProduct orderProduct;
	@ManyToOne
	@JoinColumn(name = "Productid")
	private Product product;

}
