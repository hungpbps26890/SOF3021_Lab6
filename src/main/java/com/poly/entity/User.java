package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@SuppressWarnings("serial")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "users")
public class User implements Serializable {

	@Id
	@Column(columnDefinition = "varchar(150)")
	private String username;
	
	private String password;

	@Column(name = "first_name", columnDefinition = "nvarchar(150)")
	private String firstName;

	@Column(name = "last_name", columnDefinition = "nvarchar(150)")
	private String lastName;

	@Column(name = "phone_number", columnDefinition = "varchar(12)")
	private String phoneNumber;

	@Column(columnDefinition = "varchar(150)")
	private String email;

	private Boolean admin = false;

	private Boolean active = true;

	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<UserAddress> userAddresses;
	
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<Order> orders;
}
