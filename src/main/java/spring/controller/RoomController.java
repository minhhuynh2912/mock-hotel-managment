/*
 * @author Ha Minh Tri
 * @date Apr 2, 2021
 * @project MockProject
 */


package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.model.Room;
import spring.model.RoomCategory;
import spring.service.RoomService;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	
	@RequestMapping(value = "/listRoom", method = RequestMethod.GET)
	public ModelAndView roomPage(Model model) {
		ModelAndView mav = new ModelAndView("roomListView");
		model.addAttribute("roomAttribute", new Room());
		List<RoomCategory> list = roomService.findAllRoomCate();
		mav.addObject("listRoomCate", list);
		return mav;
	}
	
	
	@RequestMapping(value = "/addRoom", method = RequestMethod.POST)
	public ModelAndView addRoomPage(@ModelAttribute("roomAttribute") Room room) {
		ModelAndView mav = new ModelAndView("roomListView");
		roomService.addRoom(room);
		return mav;
	}
	
	@RequestMapping(value = "/listRoomCategory", method = RequestMethod.GET)
	public ModelAndView roomCatePage() {
		ModelAndView mav = new ModelAndView("roomCateView");
		return mav;
	}
	
	
}
