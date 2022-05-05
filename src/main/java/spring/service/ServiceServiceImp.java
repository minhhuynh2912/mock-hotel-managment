/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.repository.ServiceRepository;

@Service
public class ServiceServiceImp implements ServiceService {
	
	@Autowired
	private ServiceRepository serviceRepository;

	@Override
	public void addService(spring.model.Service service) {
		serviceRepository.save(service);
		
	}

	



}
