package com.DATT.entity;

import java.io.Serializable;

import javax.persistence.Entity;
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
@Table(name = "Substance_Products")
public class SubstanceProducts implements Serializable{
@Id
private Integer id;

@ManyToOne
@JoinColumn(name="Substancedetailid")
private SubstanceDetail substanceDetail;

@ManyToOne
@JoinColumn(name = "Productid")
private Product product;
}
