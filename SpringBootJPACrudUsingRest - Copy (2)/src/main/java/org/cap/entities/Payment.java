package org.cap.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
	@Table(name = "Payment")
	public class Payment implements Serializable {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Integer paymentid;
		private String cardname;
	    private String cardnumber;
	    private String expmonth;
	    private String expyear;
	    private String cvv;
		
		public Integer getPaymentid() {
			return paymentid;
		}
		public void setPaymentid(Integer paymentid) {
			this.paymentid = paymentid;
		}
		public String getCardname() {
			return cardname;
		}
		public void setCardname(String cardname) {
			this.cardname = cardname;
		}
		public String getCardnumber() {
			return cardnumber;
		}
		public void setCardnumber(String cardnumber) {
			this.cardnumber = cardnumber;
		}
		public String getExpmonth() {
			return expmonth;
		}
		public void setExpmonth(String expmonth) {
			this.expmonth = expmonth;
		}
		public String getExpyear() {
			return expyear;
		}
		public void setExpyear(String expyear) {
			this.expyear = expyear;
		}
		public String getCvv() {
			return cvv;
		}
		public void setCvv(String cvv) {
			this.cvv = cvv;
		}
	    
	    
	    
		
	}    
	   
	
	
	
	
	

