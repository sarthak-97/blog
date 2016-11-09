package org.javabrain.dto;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.javabrain.Userdet;
import org.servlet.resp;


public class hiberterst {

	public void values(String name,String pass, String email,String admno){

		
         
       SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory();        		
       
       Session session =	sessionFactory.openSession();
       session.beginTransaction();

       Query queryResult = session.createQuery("from Userdet");
       java.util.List allUsers;
       String pa,na;
       
       allUsers = queryResult.list();
       int f;
       f=0;
       for (int i = 0; i < allUsers.size(); i++) {
        Userdet user = (Userdet) allUsers.get(i);
        pa=user.getAdmno();
        na=user.getUserName();
        if(admno.equals(pa)){
         f=1;
         break;
         }
        }
         
           if(f!=1){
    Userdet user= new Userdet();  
      
       user.setUserName(name);
       user.setPass(pass);
       user.setEmail(email);
       user.setAdmno(admno);
       session.save(user);
       session.getTransaction().commit();
       session.close(); 
       user=null;
       System.out.println(name);
           }
           else
           {   System.out.println("duplicate");
           }
           
	 }



	
   
       public void values(String nam,String pas)
       {
    	   SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory(); 
    	   Session  session =	sessionFactory.openSession();
	       session.beginTransaction();
	      
	       Query queryResult = session.createQuery("from Userdet");
	       java.util.List allUsers;
	       String pa,na;
	       
	       allUsers = queryResult.list();
	       for (int i = 0; i < allUsers.size(); i++) {
	        Userdet user = (Userdet) allUsers.get(i);
	        pa=user.getPass();
	        na=user.getUserName();
	        if(pas.equals(pa) && nam.equals(na)){
	        System.out.println(user.getEmail());
	       
	        break;
	       }
	        else 
	        {System.out.println("no record found");}
	        }
	      System.out.println("Database contents delivered..."); 
	     
	       session.getTransaction().commit();
	       session.close();
	       
	       
       }






}