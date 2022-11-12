package com.DATT.rest.controller;

import java.util.Date;
import java.util.UUID;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DATT.dao.AccountDAO;
import com.DATT.dao.AuthorityDAO;
import com.DATT.dao.RoleDAO;
import com.DATT.entity.Account;
import com.DATT.entity.Authority;
import com.DATT.entity.Role;
import com.DATT.payload.CreateGuestRequest;
import com.DATT.payload.CreateGuestRespone;
import com.DATT.payload.JwtResponse;
import com.DATT.payload.LoginRequest;
import com.DATT.payload.ResponseMessage;
import com.DATT.payload.SignupRequest;
import com.DATT.security.jwt.JwtUtils;
import com.DATT.security.service.CustomUserDetail;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthRestController {
	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	AccountDAO accountDAO;

	@Autowired
	AuthorityDAO authorityDAO;

	@Autowired
	RoleDAO roleDAO;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	JwtUtils jwtUtils;

	@PostMapping("/signin")
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
		String usernameOrEmail = loginRequest.getUsername().equals("") ? loginRequest.getEmail()
				: loginRequest.getUsername();

		try {
			Authentication authentication = authenticationManager
					.authenticate(new UsernamePasswordAuthenticationToken(usernameOrEmail, loginRequest.getPassword()));
			SecurityContextHolder.getContext().setAuthentication(authentication);

			String jwt = jwtUtils.generateJwtToken(authentication);
			CustomUserDetail userDetails = (CustomUserDetail) authentication.getPrincipal();
			String roles = userDetails.getAuthorities().stream().findAny().get().getAuthority();
			return ResponseEntity.ok(new JwtResponse("Successfully", jwt, "Bearer", roles, userDetails.getUsername(),
					userDetails.getFullname(), userDetails.getEmail(), userDetails.getPhone(), userDetails.getAddress(),
					userDetails.getGender(), userDetails.getBirthday(), userDetails.getPhoto()));
		} catch (Exception e) {
			return ResponseEntity.ok(new JwtResponse("Error", "", "", "", "", "", "", "", "", false, new Date(), ""));
		}
	}

	@PostMapping("/signup")
	public ResponseEntity<?> registerUser(@Valid @RequestBody SignupRequest signUpRequest) {
		if (accountDAO.existsByUsername(signUpRequest.getUsername())) {
			return ResponseEntity.ok(new ResponseMessage(false, "Username is already taken!"));
		}
		if (accountDAO.existsByEmail(signUpRequest.getEmail())) {
			return ResponseEntity.ok(new ResponseMessage(false, "Email is already taken!"));
		}
		// Create new user's account
		Account account = new Account(signUpRequest.getUsername(), signUpRequest.getEmail(),
				encoder.encode(signUpRequest.getPassword()));
		account.setActive(true);
		account.setCreateday(new Date());
		accountDAO.save(account);

		Role role = roleDAO.findById("USER").get();

		Authority authority = new Authority(null, account, role);
		authorityDAO.save(authority);

		return ResponseEntity.ok(new ResponseMessage(true, "User registered successfully!"));
	}

	@PostMapping("/createguest")
	public ResponseEntity<?> createGuest(@Valid @RequestBody CreateGuestRequest createGuestRequest) {
		String usernameGuest;
		String passwordGuest = UUID.randomUUID().toString().substring(0, 10);

		do {
			usernameGuest = "guest" + UUID.randomUUID().toString().substring(0, 10);
		} while (accountDAO.existsById(usernameGuest));

		if (accountDAO.existsByEmail(createGuestRequest.getEmail())) {
			Account account = accountDAO.findByEmail(createGuestRequest.getEmail());
			return ResponseEntity.ok(new CreateGuestRespone(false, "Email is already taken!", account.getUsername()));
		} else {
			// Create new user's account
			Account account = new Account();
			account.setUsername(usernameGuest);
			account.setPassword(passwordGuest);
			account.setEmail(createGuestRequest.getEmail());
			account.setFullname(createGuestRequest.getFullname());
			account.setPhone(createGuestRequest.getPhone());
			account.setAddress(createGuestRequest.getAddress());
			account.setActive(true);
			account.setCreateday(new Date());
			accountDAO.save(account);

			Role role = roleDAO.findById("USER").get();
			Authority authority = new Authority(null, account, role);
			authorityDAO.save(authority);
			return ResponseEntity.ok(new CreateGuestRespone(true, "User registered successfully!", usernameGuest));
		}
	}
}
