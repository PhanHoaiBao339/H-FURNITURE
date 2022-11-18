package com.DATT.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	private String id;
	private String name;
	private Double price;
	private String image1;
	private String image2;
	private String image3;
	private Integer quantity;
	private Boolean available;
	private Boolean status;
	private String substancedes;
	private String contents;
	private String size;
	
	@ManyToOne
	@JoinColumn(name = "Promotionid")
	private Promotion promotion;
	
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	private Category category;
	
	private Date createday;
	private Date deleteday;
	private Date updateday;
	private String personcreate;
	private String persondelete;
	private String personupdate;

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "product")
	List<Comment> comments;
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "product")
	List<OrderProductDetail> orderProductDetails;

}
