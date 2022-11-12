package com.DATT.payload;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CreateGuestRequest {
	private String email;
	private String fullname;
	private String phone;
	private String address;
}
