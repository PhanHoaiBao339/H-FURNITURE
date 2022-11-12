package com.DATT.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
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
@Table(name = "Accounts")
public class Account implements Serializable{
	@Id
	private String username;
	private String email;
	private String password;
	private String fullname;
	private Boolean gender;
	private Date birthday;
	private String phone;
	private String address;
	private String photo;
	private Boolean active;
	private Date createday;
	private Date deleteday;
	private Date updateday;
	private String persondelete;
	private String personupdate;
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "account")
	List<Authority> authorities;
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "account")
	List<Comment> comments;
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "account")
	List<OrderProduct> orderProducts;
	
	public Account(String username, String email, String password) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
	}
}
