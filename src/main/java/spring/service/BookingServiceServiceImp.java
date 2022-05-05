/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.repository.BookingServiceRepository;

@Service
public class BookingServiceServiceImp implements BookingServiceService {
	
	@Autowired
	private BookingServiceRepository bServiceRepository;

}
