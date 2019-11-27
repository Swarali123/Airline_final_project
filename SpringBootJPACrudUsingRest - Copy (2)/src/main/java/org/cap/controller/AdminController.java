package org.cap.controller;


import org.cap.entities.Admin;
import org.cap.entities.Flight;
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
public class AdminController {

	@Autowired
	private IDetailsService service;

	public IDetailsService getService() {
		return service;
	}

	public void setService(IDetailsService service) {
		this.service = service;
	}

	private int i = 0;
	
	 @RequestMapping("/admin")
		public ModelAndView admin() {
			ModelAndView mv= new ModelAndView("loginadmin");
			return mv;
	}

	 @RequestMapping(value="/adminviewprocess", method=RequestMethod.POST)
		public ModelAndView adminLogin(ModelMap model,@RequestParam("uname") String email,@RequestParam("password") String password) {
			ModelAndView mv=null;
			
			List<Admin> admin=service.getAllAdmins();
			if(admin.isEmpty())
				System.out.println("is empty");
			for(Admin a:admin)
			{
				System.out.println(a.getUname());
				
				System.out.println(a.getPassword());
				
				if(a.getUname().equals(email) && a.getPassword().equals(password)) {
				System.out.println(a.getUname());
				System.out.println(a.getPassword());
				mv = new ModelAndView("AdminView");
				break;
				
				}
				
			else {
				mv = new ModelAndView("adminnotfound");	
			}	
			
		}
			return mv;
			
	 }
			
	
	  @RequestMapping("/addflights") 
	  public ModelAndView createFlight(){
	  ModelAndView mv=new ModelAndView("addflights"); 
	  return mv; }
	 
	
	 @RequestMapping(value="/enterFlightsdetails", method=RequestMethod.POST)
	 public ModelAndView createFlight(@ModelAttribute("flight") Flight flight) { 
	  service.addFlight(flight); 
	  return new ModelAndView("flightadded"); }
	 
	
	 @RequestMapping("/delete") 
	 public ModelAndView deleteFlight(){
		 ModelAndView mv=new ModelAndView("delete"); return mv; }
	  

	 @RequestMapping(value="/deleteprocess",method=RequestMethod.GET) 
	 public ModelAndView deleteProcess(@RequestParam Integer flightId){
		 service.deleteFlight(flightId); 
		 ModelAndView mv=new ModelAndView("deleted"); 
		 return mv; 
		 }
	 
	/*
	 * @RequestMapping("/searchflight") public ModelAndView createLogin() {
	 * ModelAndView mv = new ModelAndView("searchFlight"); return mv;
	 */
			
	
	 @RequestMapping(value="/flightListAdmin", method=RequestMethod.GET)
		public ModelAndView searchadminFlight(@ModelAttribute("flight") Flight flight) {
			
			
			List<Flight> flights=service.getAdminFlight();
	  
			ModelAndView mv = new ModelAndView("flightListAdmin","flight",flights);
			return mv;
			
		} 
	 
}
 
