package org.cap.controller;

import java.util.ArrayList;
import java.util.List;

import org.cap.entities.Booking;
import org.cap.entities.Flight;
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

@Controller
public class BookingController {

	@Autowired
	private IDetailsService service;

	public IDetailsService getService() {
		return service;
	}

	public void setService(IDetailsService service) {
		this.service = service;
	}
	
	@RequestMapping("/searchflight")
	public ModelAndView displaysearch() {
		ModelAndView mv = new ModelAndView("searchFlight");
		return mv;
		
	} 
		
	@RequestMapping(value="/searchflightprocess", method=RequestMethod.POST)
	public ModelAndView searchFlight(ModelMap model,@RequestParam("source") String source,@RequestParam("destination") String destination,@RequestParam("dept_date") String dept_date) {
		ModelAndView mv=null;
		
		List<Flight> flight=service.getSelectedFlight();
		List<Flight> modifiedFlights = new ArrayList<Flight>();
		if(flight.isEmpty())
			System.out.println("is empty");
		for(Flight f:flight)
		{
			System.out.println(f.getSource());
			System.out.println(f.getDestination());
			System.out.println(f.getDept_date());
			
			if((f.getSource().equalsIgnoreCase(source)) && (f.getDestination().equalsIgnoreCase(destination)) && (f.getDept_date().equalsIgnoreCase(dept_date))) {
			modifiedFlights.add(f);
			System.out.println(f.getSource());
			System.out.println(f.getDestination());
			System.out.println(f.getDept_date());
		}
			
			
			if (modifiedFlights.isEmpty()) {
				mv = new ModelAndView("FlightNotAvailable");
			} else {
				mv = new ModelAndView("selectFlight", "flightss", modifiedFlights);
			}
		}
		return mv;
	}

	@RequestMapping(value = "/selectflightprocess", method = RequestMethod.POST)
	public ModelAndView selectFlight(@RequestParam("flightid") int flightId, ModelMap model) {
		Flight flight = service.bookFlight(flightId);
		
		ModelAndView mv = new ModelAndView("Book", "flight", flight);
		
		return mv;
		
	}
	
	
	@RequestMapping("/bookingflightprocess")
	public ModelAndView bookprocess(@ModelAttribute("book") Booking book) {
		service.bookTicket(book);
		ModelAndView mv = new ModelAndView("payment");
		return mv;
		
		
		
	}
	
	
	

}

	
	
	
	
	

