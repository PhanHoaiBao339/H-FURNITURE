package com.DATT.security.service;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.DATT.entity.Account;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class CustomUserDetail implements UserDetails {
	private static final long serialVersionUID = 1L;

	private String username;
	@JsonIgnore
	private String password;
	private String fullname;
	private String email;
	private String phone;
	private String address;
	private Boolean gender;
	private Date birthday;
	private String photo;

	private Collection<? extends GrantedAuthority> authorities;

	public CustomUserDetail(String username, String fullname, String password,
			Collection<? extends GrantedAuthority> authorities, String email, String phone, String address,
			Boolean gender, Date birthday, String photo) {
		this.username = username;
		this.fullname = fullname;
		this.password = password;
		this.authorities = authorities;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.birthday = birthday;
		this.photo = photo;
	}

	public static CustomUserDetail build(Account user) {
		List<GrantedAuthority> authorities = user.getAuthorities().stream()
				.map(authrity -> new SimpleGrantedAuthority(authrity.getRole().getId())).collect(Collectors.toList());

		return new CustomUserDetail(user.getUsername(), user.getFullname(), user.getPassword(), authorities,
				user.getEmail(), user.getPhone(), user.getAddress(), user.getGender(), user.getBirthday(),
				user.getPhoto());
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	public String getFullname() {
		return fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
