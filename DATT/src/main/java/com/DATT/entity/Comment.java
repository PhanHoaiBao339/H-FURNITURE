package com.DATT.entity;

import java.io.Serializable;
import java.util.Date;

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
@Table(name = "Comments")
public class Comment implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	@JoinColumn(name = "Accountid")
	private Account account;
	@ManyToOne
	@JoinColumn(name = "Productid")
	private Product product;
	private String text;
	private Date createday;
}
