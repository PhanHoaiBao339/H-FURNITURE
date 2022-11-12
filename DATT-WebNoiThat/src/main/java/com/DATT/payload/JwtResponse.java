package com.DATT.payload;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class JwtResponse {
	private String message;
	private String token;
	private String type;
	private String role;
	private String username;
	private String fullname;
	private String email;
	private String phone;
	private String address;
	private Boolean gender;
	private Date birthday;
	private String photo;
}
