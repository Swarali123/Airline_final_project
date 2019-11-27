package org.cap.service;

import org.cap.entities.Admin;
import org.cap.entities.Booking;
import org.cap.entities.Flight;
import org.cap.entities.Payment;
import org.cap.dao.AdminNotFoundException;
import org.cap.dao.IDetailsDao;
import org.cap.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * marking with @Service ,@Service is similar to @Component but used for service
 * implementations Spring will create object of DetailsServiceImpl class and
 * will keep in bean factory
 */
@Service
@Transactional
public class DetailsServiceImpl implements IDetailsService {

	/**
	 * spring will inject with object of DetailsDaoImpl class because @Autowired is
	 * mentioned here
	 */
	@Autowired
	private IDetailsDao dao;

	public IDetailsDao getDao() {
		return dao;
	}

	public void setDao(IDetailsDao dao) {
		this.dao = dao;
	}

	@Override
    public User createUser(User user) {
       // transaction opened by spring
         user= dao.createUser(user);
        //transaction closed by spring
        return user;
    }


    @Override
    public User createUser(String name) {
        return dao.createUser(name);
    }

	@Override
	public void addUser(User user) {
		dao.addUser(user);
		
	}

	@Override
	public List<User> getAllUsers() {
		List<User> list=dao.getAllUsers();
        return list;
	}

	
    @Override
    public List<Flight> getSelectedFlight() { List<Flight>
	 list=dao.getSelectedFlight(); 
	  return list;
	  
    }
    
    @Override
	public Flight bookFlight(Integer flightId) {
		return dao.bookflight(flightId);

	}

	@Override
	public void bookTicket(Booking book) {
		dao.bookFlight(book);
		
	}
	
	//Payment
	
	@Override
	public void addPayment(Payment payment) {
		dao.addPayment(payment);

	
}


	
	//Admin service to login,add,delete and view flights
	  
	
    
    @Override public List<Admin> getAllAdmins() { 
		List<Admin> list=dao.getAllAdmins();
		return list; }
	 

	@Override
	public void addFlight(Flight flight) {
		dao.addFlight(flight);
		
	}
	
	
	@Override public Flight findFlightById(int flightId) { 
		Flight flight= dao.findFlightById(flightId);
	      return flight; }

	
	@Override
	public void deleteFlight(Integer flightId) { 
		dao.deleteFlight(flightId); } 
 
    
	@Override
	public List<Flight> getAdminFlight() {
		List<Flight> list=dao.getAdminFlight();
		return list;
	}
	  

}
	

