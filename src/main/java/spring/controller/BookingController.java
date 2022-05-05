/*
 * @author Ha Minh Tri
 * @date Apr 2, 2021
 * @project MockProject
 */


package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingController {
	@RequestMapping(value = "/listBooking", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("bookedView");
		return mav;
	}
}
