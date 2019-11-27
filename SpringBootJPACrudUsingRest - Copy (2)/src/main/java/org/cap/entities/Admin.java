package org.cap.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "Admin")
public class Admin implements Serializable {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    public Integer getId(){
        return id;
    }

    public void setId(final Integer id){
        this.id=id;
    }

    private String uname;

    public String getUname(){
        return uname;
    }

    public void setUname(final String uname){
        this.uname=uname;
    }
    
    private String password;

    public String getPassword(){
        return password;
    }

    public void setPassword(final String password){
        this.password=password;
    }
    
}
  