package com.farma.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.farma.entities.Patient;
import com.farma.repository.PatientRepository;
import com.farma.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService {

	@Autowired
	private PatientRepository patientRepository;

	@Transactional(readOnly = true)
	@Override
	public List<Patient> findAll() throws Exception {
		return patientRepository.findAll();
	}

	@Override
	public Patient save(Patient t) throws Exception {
		return patientRepository.save(t);
	}

	@Override
	public Optional<Patient> findById(Long id) throws Exception {
		return patientRepository.findById(id);
	}

	@Override
	public void deleteById(Long id) throws Exception {
		patientRepository.deleteById(id);
	}

	@Transactional(readOnly = true)
	@Override
	public List<Patient> fetchPatientByDni(String dni) throws Exception {
		return patientRepository.findByDni(dni);
	}

	@Transactional(readOnly = true)
	@Override
	public Optional<Patient> fetchByPatientWithVouchers(Long id) throws Exception {
		return patientRepository.fetchByPatientWithVouchers(id);
	}

	@Transactional(readOnly = true)
	@Override
	public Optional<Patient> fetchByPatientWithSigns(Long id) throws Exception {
		return patientRepository.fetchByPatientWithSigns(id);
	}

}
