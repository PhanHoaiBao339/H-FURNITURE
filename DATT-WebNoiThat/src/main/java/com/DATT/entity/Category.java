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
@Table(name = "Categories")
public class Category implements Serializable {
	@Id
	private String id;
	private String name;
	private Boolean active;
	private Date createday;
	private Date deleteday;
	private Date updateday;
	private String personcreate;
	private String persondelete;
	private String personupdate;

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "category")
	List<Product> productList;

}
