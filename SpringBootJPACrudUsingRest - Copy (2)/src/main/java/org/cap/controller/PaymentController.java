package org.cap.controller;


import org.cap.entities.Payment;
import org.cap.entities.User;
import org.cap.service.IDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController {

	
	@Autowired
	private IDetailsService service;

	public IDetailsService getService() {
		return service;
	}

	public void setService(IDetailsService service) {
		this.service = service;
	}


	@RequestMapping(value="/paymentprocess", method=RequestMethod.POST)
	public ModelAndView paymentprocess(@ModelAttribute("payment") Payment payment) {
		service.addPayment(payment);
		
		ModelAndView mv = new ModelAndView("ticket");
		return mv;
	}
	
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	} 
	
	
	
	}
	


	