/*
 * @author Ha Minh Tri
 * @date Mar 30, 2021
 * @project MockProject
 */


package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminHomeController {
	
	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public ModelAndView homeAdminPage() {
		ModelAndView mav = new ModelAndView("homeAdmin");
		return mav;
	}
	
	
	@RequestMapping(value = "/editRoom", method = RequestMethod.GET)
	public ModelAndView editRoomPage() {
		ModelAndView mav = new ModelAndView("roomlistView");
		return mav;
	}
	
	
}
