package com.farma.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "patients")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Enter your firstname")
	@Column(name = "first_name", nullable = false, length = 70)
	private String firstName;

	@NotEmpty(message = "Enter your lastname")
	@Column(name = "last_name", nullable = false, length = 70)
	private String lastName;

	@Size(min = 8, max = 8)
	@NotEmpty(message = "Enter your dni")
	@Column(name = "dni", nullable = false, length = 8)
	private String dni;

	@OneToMany(mappedBy = "patientId", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Voucher> vouchers;

	@OneToMany(mappedBy = "patientId", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Sign> signs;

	public Patient() {
		vouchers = new ArrayList<>();
		signs=new ArrayList<>();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public List<Voucher> getVouchers() {
		return vouchers;
	}

	public void setVouchers(List<Voucher> vouchers) {
		this.vouchers = vouchers;
	}

	public List<Sign> getSigns() {
		return signs;
	}

	public void setSigns(List<Sign> signs) {
		this.signs = signs;
	}

}
