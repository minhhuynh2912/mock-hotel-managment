/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import spring.model.BookingService;

public interface BookingServiceRepository extends JpaRepository<BookingService, Integer> {

}
