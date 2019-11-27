package org.cap.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



	@Entity
	@Table(name = "Booking")
	public class Booking {
		

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Integer Book_id;
		private String fname;
		private String lname;
		private Integer age;
		private Integer no_of_booked_economySeats;
		private Integer no_of_booked_businessSeats;

		
		public Booking() {
			
			
			
		}
		
		public Integer getBook_id() {
			return Book_id;
		}
		public void setBook_id(Integer book_id) {
			Book_id = book_id;
		}
		
		
		public String getFname() {
			return fname;
		}

		public void setFname(String fname) {
			this.fname = fname;
		}

		public String getLname() {
			return lname;
		}

		public void setLname(String lname) {
			this.lname = lname;
		}

		public Integer getAge() {
			return age;
		}
		public void setAge(Integer age) {
			this.age = age;
		}
		public Integer getNo_of_booked_economySeats() {
			return no_of_booked_economySeats;
		}
		public void setNo_of_booked_economySeats(Integer no_of_booked_economySeats) {
			this.no_of_booked_economySeats = no_of_booked_economySeats;
		}
		public Integer getNo_of_booked_businessSeats() {
			return no_of_booked_businessSeats;
		}
		public void setNo_of_booked_businessSeats(Integer no_of_booked_businessSeats) {
			this.no_of_booked_businessSeats = no_of_booked_businessSeats;
		}
	
		
		
		
		
}