/*
 * @author Ha Minh Tri
 * @date Mar 12, 2021
 * @project JSFW.L.A101
 */


package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.model.Account;
import spring.model.Account_roles;
import spring.service.AccountService;


@Controller
public class RegisterController {
	
	@Autowired
	private AccountService accountService;
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPage(Model model) {
		model.addAttribute("account", new Account());
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerPostPage(@ModelAttribute("account") Account account, BindingResult result, ModelMap model) {		
		if (accountService.findByUsername(account.getUsername())!=null) {
			model.addAttribute("message", "Username is existed");
		} else if (accountService.findByIdentityNumber(account.getIdenityNumber())!=null) {
			model.addAttribute("message", "Identity number is existed");
		} else {
			accountService.addUser(account);
			int id = accountService.findByUsername(account.getUsername()).getAccountId();
			Account_roles account_roles = new Account_roles(id, 2);
			accountService.addRole(account_roles);
			ModelAndView mav = new ModelAndView("login");
			return mav;
		}
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
}
