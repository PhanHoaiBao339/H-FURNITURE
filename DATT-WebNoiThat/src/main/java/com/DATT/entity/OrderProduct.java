package com.DATT.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@Table(name = "Orders")
public class OrderProduct implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;     
	@ManyToOne
	@JoinColumn(name = "Username")
	private Account account;
	private String fullname; 
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	private Date createDate= new Date();
	private String address;
	private String phone;
	private String note;
	private String paymentmethod;
	
	@ManyToOne
	@JoinColumn(name = "Statusid")
	private StatusOrder statusOrder;
	
	@JsonIgnore
	@OneToMany(mappedBy = "orderProduct")
	List<OrderProductDetail> orderProductDetails;

	public OrderProduct(Account account, String fullname, Date createDate, String address, String phone, String note,
			String paymentmethod, StatusOrder statusOrder, List<OrderProductDetail> orderProductDetails) {
		super();
		this.account = account;
		this.fullname = fullname;
		this.createDate = createDate;
		this.address = address;
		this.phone = phone;
		this.note = note;
		this.paymentmethod = paymentmethod;
		this.statusOrder = statusOrder;
		this.orderProductDetails = orderProductDetails;
	}
	
	
}
