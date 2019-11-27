package org.cap.service;

import org.cap.dao.AdminNotFoundException;
import org.cap.entities.Admin;
import org.cap.entities.Booking;
import org.cap.entities.Flight;
import org.cap.entities.Payment;
import org.cap.entities.User;

import java.util.List;

public interface IDetailsService {

	
	// user data 
	User createUser(User user);

    User createUser(String name);

	void addUser(User user);
	
	public List<User> getAllUsers();
	 
    public List<Flight> getSelectedFlight();
    
    public Flight bookFlight(Integer flightId);

	public void bookTicket(Booking book);
	
	void addPayment(Payment payment);


	 
	 // Admin part to login,add,delete and view all flights
	
	List<Admin> getAllAdmins();

	void addFlight(Flight flight);

	Flight findFlightById(int flightId);
	
	void deleteFlight(Integer flightId);

	public List<Flight> getAdminFlight();
	
	
	
}