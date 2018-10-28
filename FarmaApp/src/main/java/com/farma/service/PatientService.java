package com.farma.service;

import java.util.List;
import java.util.Optional;

import com.farma.entities.Patient;

public interface PatientService extends CrudService<Patient> {

	List<Patient> fetchPatientByDni(String dni) throws Exception;

	Optional<Patient> fetchByPatientWithVouchers(Long id) throws Exception;

	Optional<Patient> fetchByPatientWithSigns(Long id) throws Exception;
}
