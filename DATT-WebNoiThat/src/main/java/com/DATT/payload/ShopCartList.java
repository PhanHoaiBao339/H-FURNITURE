package com.DATT.payload;

import com.DATT.entity.ProductShow;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ShopCartList {
	private ProductShow product;
	private Integer quantity ;
	private Double totalprice;
}
