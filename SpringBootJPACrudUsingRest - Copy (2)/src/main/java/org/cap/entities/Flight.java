package org.cap.entities;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * The persistent class for the flight_master database table.
 * 
 */
@Entity
@Table(name = "FLIGHTS")
public class Flight implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer flightId;
	private Integer flightNo;
	private String source;
	private String destination;
	private String dept_date;
	private Integer remaining_business_seats;
	private Integer remaining_economic_seats;
	private Integer duration;
	private Integer price;
	private Integer dept_time;
	private Integer arrival_time;

	public Integer getFlightId() {
		return flightId;
	}

	public void setFlightId(Integer flightId) {
		this.flightId = flightId;
	}

	public Integer getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(Integer flightNo) {
		this.flightNo = flightNo;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDept_date() {
		return dept_date;
	}

	public void setDept_date(String dept_date) {
		this.dept_date = dept_date;
	}

	public Integer getRemaining_business_seats() {
		return remaining_business_seats;
	}

	public void setRemaining_business_seats(Integer remaining_business_seats) {
		this.remaining_business_seats = remaining_business_seats;
	}

	public Integer getRemaining_economic_seats() {
		return remaining_economic_seats;
	}

	public void setRemaining_economic_seats(Integer remaining_economic_seats) {
		this.remaining_economic_seats = remaining_economic_seats;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getDept_time() {
		return dept_time;
	}

	public void setDept_time(Integer dept_time) {
		this.dept_time = dept_time;
	}

	public Integer getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(Integer arrival_time) {
		this.arrival_time = arrival_time;
	}
	
	
	
}

	