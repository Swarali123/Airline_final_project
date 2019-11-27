package org.cap.dao;

import org.cap.entities.Admin;
import org.cap.entities.Booking;
import org.cap.entities.Flight;
import org.cap.entities.Payment;
import org.cap.entities.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import java.util.List;

/**
 * marking with @Repository is similar to @Component but used for Dao
 * implementation classes, spring will keep instance of DetailsDaoImpl and the
 * object will be kept in bean factory
 *
 */
@Repository
public class DetailsDaoImpl implements IDetailsDao {

	@PersistenceContext
	private EntityManager em;

	public DetailsDaoImpl() {
	}

	 @Override
	    public User createUser(User user){
	        user=em.merge(user);
	        return user;
	    }

	    @Override
	    public User createUser(String name) {
	        User user=new User();
	        //user.setName(name);
	        user=em.merge(user);
	        return user;
	    }

		@Override
		public void addUser(User user) {
			em.merge(user);
			
		}

		@Override
		public List<User> getAllUsers() {
			    	Query q=em.createQuery("from User");
			    	List<User> list=q.getResultList();
			    	return list;
			    
		}

		
		  @Override public List<Flight> getSelectedFlight() {
			  Query q=em.createQuery("from Flight"); 
		  List<Flight>list=q.getResultList(); 
		  return list;
		  }
		 
		  @Override
			public Flight bookflight(Integer flightId) {
				
				//Flight flight=findFlightDataById(flightId);
				Flight f=em.find(Flight.class, flightId);
				
				//Query q=em.createQuery("select flightId,remaining_economic_seats,remaining_business_seats,price from Flights f where f.flightId=:flightId");
				
				//List<Flight>list=q.getResultList();
				return f;
				
				
				
				
			}

			private Flight findFlightDataById(Integer flightId) {

				Flight f=em.find(Flight.class, flightId);
				
				return f;
			}

			@Override
			public void bookFlight(Booking book) {
			
				em.merge(book);
				
			}
			
			 
			@Override
			public void addPayment(Payment payment) {
				em.merge(payment);
				
			
			}
		
		
	
	
	              //Admin
	@Override
	public List<Admin> getAllAdmins() {
		Query q = em.createQuery("from Admin");
		List<Admin> list = q.getResultList();
		return list;

	}

	@Override
	public void addFlight(Flight flight) {
		em.persist(flight);
		
	}
	
	@Override 
	public Flight findFlightById(int flightId) { 
		Flight f= em.find(Flight.class,flightId);
	  return f; }
	
	@Override
	public void deleteFlight(Integer flightId) { 
		Flight flight=findFlightById(flightId);
		
		  em.remove(flight);

	}
	
	@Override
	public List<Flight> getAdminFlight() {
		Query q=em.createQuery("from Flight");
		List<Flight>list=q.getResultList();
		return list;
	}



	
}
	 



	

