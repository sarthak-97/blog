package org.javabrain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Userdet {
	@Id
	private String admno;
  
	private String usrName;
    private String email;
    private String pass;
    public String getAdmno() {
  		return admno;
  	}
  	public void setAdmno(String admno) {
  		this.admno = admno;
  	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUserName() {
		return usrName;
	}
	public void setUserName(String userName) {
		this.usrName = userName;
	}
}
