package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.javabrain.Userdet;
import org.javabrain.dto.hiberterst;

/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		response.setContentType("text/html;charset=UTF-8");
		String nam=request.getParameter("t1");
		String pas	=request.getParameter("t2");
		SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory(); 
 	   Session  session =	sessionFactory.openSession();
	       session.beginTransaction();
	      
	       Query queryResult = session.createQuery("from Userdet");
	       java.util.List allUsers;
	       String pa,na;
	       int f;
	       f=0;
	       
	       allUsers = queryResult.list();
	       System.out.println(allUsers.size());
	       for (int i = 0; i < allUsers.size(); i++) {
	        Userdet user = (Userdet) allUsers.get(i);
	        pa=user.getPass();
	        na=user.getUserName();
	        
	        if(na.equals(nam) && pa.equals(pas))
	        {
	        	System.out.println("welcom");
	        f=1;
	        	
	        	break; 
	        }
	       
	        }
	       System.out.println("delievered");
	       if(f==1)
	       {
	    	   response.sendRedirect("dash.jsp");
	       }
	       else
	       {
	    	   response.sendRedirect("home.jsp");
	       }
	       
	     
	       session.getTransaction().commit();
	       session.close();
	}

}
