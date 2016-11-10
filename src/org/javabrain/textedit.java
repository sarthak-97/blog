package org.javabrain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class textedit {
	@Id
private String admno;
private String catg1;
private String catg2;
private String catg3;
private String catg4;
private String catg5;
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
