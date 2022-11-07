package com.DATT.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@Table(name = "Promotions")
public class Promotion implements Serializable {
@Id
private String id;
private String detail;
private Boolean active;
private Boolean percent;
}
