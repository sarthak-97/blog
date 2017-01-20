package org.javabrain;

import java.awt.TextArea;


import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class textedit {
	@Id
private String admno;
@ Lob
private String catg1;
@ Lob
private String catg2;
@ Lob
private String catg3;
@ Lob
private String catg4;
@ Lob
private String catg5;

private String catg6;

public String getAdmno() {
	return admno;
}
public void setAdmno(String admno) {
	this.admno = admno;
}

public String getCatg1() {
	return catg1;
}
public void setCatg1(String catg1) {
	this.catg1 = catg1;
}
public String getCatg2() {
	return catg2;
}
public void setCatg2(String catg2) {
	this.catg2 = catg2;
}
public String getCatg3() {
	return catg3;
}
public void setCatg3(String catg3) {
	this.catg3 = catg3;
}
public String getCatg4() {
	return catg4;
}
public void setCatg4(String catg4) {
	this.catg4 = catg4;
}
public String getCatg5() {
	return catg5;
}
public void setCatg5(String catg5) {
	this.catg5 = catg5;
}

}
