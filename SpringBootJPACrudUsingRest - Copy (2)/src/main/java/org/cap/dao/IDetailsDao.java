package org.cap.dao;

import org.cap.entities.Admin;
import org.cap.entities.Booking;
import org.cap.entities.Flight;
import org.cap.entities.Payment;
import org.cap.entities.User;

import java.util.List;

public interface IDetailsDao {

	
	User createUser(User user);

    User createUser(String username);

	void addUser(User user);

	public List<User> getAllUsers();

	public List<Flight> getSelectedFlight();
	
	public Flight bookflight(Integer flightId);

	void bookFlight(Booking book);
	
	void addPayment(Payment payment);

	
	
	
	// Admin
    public List<Admin> getAllAdmins();

	void addFlight(Flight flight);
	
	Flight findFlightById(int flightId);
	
	void deleteFlight(Integer flightId);
	 
	public List<Flight> getAdminFlight();

	
}
