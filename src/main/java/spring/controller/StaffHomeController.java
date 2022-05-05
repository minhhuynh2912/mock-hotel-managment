/*
 * @author Ha Minh Tri
 * @date Apr 1, 2021
 * @project MockProject
 */


package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaffHomeController {
	@RequestMapping(value = "/staff/home", method = RequestMethod.GET)
	public ModelAndView homeStaffPage() {
		ModelAndView mav = new ModelAndView("homeStaff");
		return mav;
	}
}
