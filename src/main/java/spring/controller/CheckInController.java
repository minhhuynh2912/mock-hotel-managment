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
public class CheckInController {
	@RequestMapping(value = "/checkIn", method = RequestMethod.GET)
	public ModelAndView checkInPage() {
		ModelAndView mav = new ModelAndView("checkInView");
		return mav;
	}
}
