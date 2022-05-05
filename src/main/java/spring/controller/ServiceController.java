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
public class ServiceController {
	@RequestMapping(value = "/listService", method = RequestMethod.GET)
	public ModelAndView servicePage() {
		ModelAndView mav = new ModelAndView("serviceView");
		return mav;
	}
	
	
	@RequestMapping(value = "/listServiceCategory", method = RequestMethod.GET)
	public ModelAndView serviceCatPage() {
		ModelAndView mav = new ModelAndView("serviceCateView");
		return mav;
	}
}
