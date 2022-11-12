package com.DATT.entity;

import java.io.Serializable;
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
@Table(name = "SubstanceDetail")
public class SubstanceDetail implements Serializable {
	@Id
	private String id;
	private String name;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "substanceDetail")
	List<SubstanceProducts> substanceProducts;
}
