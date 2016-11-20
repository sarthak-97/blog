package org.javabrain.dto;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;
import org.javabrain.textedit;

public class testing {

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		textedit user = new textedit();
     user.setCatg1("jshgjdhjm");
     user.setAdmno("23232");
        
        
      SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory();        		
      
      Session session =	sessionFactory.openSession();
      session.beginTransaction();
      session.save(user);
      session.getTransaction().commit();
      session.close();
      

	}

}
