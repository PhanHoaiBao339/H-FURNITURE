package com.DATT.payload;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OderDetailRequest {
	private Long orderid;
	private ArrayList<ShopCartList> list;
}
