package com.DATT.payload;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OderRequest {
	private String username;
	private String fullname;
	private String address;
	private String phone;
	private String note;
	private String paymentmethod;
}
