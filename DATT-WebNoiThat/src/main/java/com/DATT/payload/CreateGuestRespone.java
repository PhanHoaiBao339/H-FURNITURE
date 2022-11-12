package com.DATT.payload;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CreateGuestRespone {
	private boolean status;
	private String message;
	private String usernameguest;
}
