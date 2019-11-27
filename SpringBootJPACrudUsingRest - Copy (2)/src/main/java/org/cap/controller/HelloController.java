package org.cap.controller;

import org.cap.entities.User;
import org.cap.service.IDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class HelloController {
	@Autowired
	private IDetailsService service;

	public IDetailsService getService() {
		return service;
	}

	public void setService(IDetailsService service) {
		this.service = service;
	}

	private int i = 0;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv= new ModelAndView("home");
		return mv;
	}
	

	@RequestMapping("/home")
	public ModelAndView createUserForm() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	} 
	  
	@RequestMapping("/createuser")
	public ModelAndView createprocess() {
		ModelAndView mv = new ModelAndView("createuser");
		return mv;
	} 
	  
	@RequestMapping("/createprocess")
	public ModelAndView createprocess(@ModelAttribute("user") User user) {
		service.addUser(user);
		
	ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	

	@RequestMapping("/login")
	public ModelAndView createLogin() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
		
	} 
		
	@RequestMapping(value="/createLogin", method=RequestMethod.POST)
	public ModelAndView createLogin(ModelMap model,@RequestParam("email") String email,@RequestParam("password") String password) {
		ModelAndView mv=null;
		
		List<User> user=service.getAllUsers();
		if(user.isEmpty())
			System.out.println("is empty");
		for(User u:user)
		{
			System.out.println(u.getEmail());
			
			System.out.println(u.getPassword());
			
			if(u.getEmail().equals(email) && u.getPassword().equals(password)) {
			System.out.println(u.getEmail());
			System.out.println(u.getPassword());
			mv = new ModelAndView("searchFlight");
			break;
			
			}
			
		else {
			mv = new ModelAndView("usernotfound");	
		}
	}
		return mv;
		}
}  
	


