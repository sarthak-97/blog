package org.servlet;
	
	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.javabrain.textedit;

	
	/**
	 * Servlet implementation class text
	 */
	@WebServlet("/text")
	public class text extends HttpServlet {
		private static final long serialVersionUID = 1L;
	
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			// TODO Auto-generated method stub
			response.setContentType("text/html;charset=UTF-8");
			 int f=0;
			String name=request.getParameter("editor1");
			System.out.println(name);
			String categry=request.getParameter("t1");
            String admno=request.getParameter("t2");
			SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory();        		
		       String s1;
		      
		       Session session =	sessionFactory.openSession();
		       session.beginTransaction();
		       Query queryResult = session.createQuery("from textedit");
		       java.util.List allUsers;
		       allUsers = queryResult.list();
		       System.out.println(allUsers.size());
		       textedit e=new textedit();
		       for (int i = 0; i < allUsers.size(); i++) {
		       e=(textedit)allUsers.get(i);
		       s1=e.getAdmno();
		       if(admno.equals(s1))
		       {
		    	   f=1;
		    	   String query="";
		    	   if(categry.equals("tech"))
		    	   {
		    		    query = "update textedit as t set t.catg1 = :newName where t.admno = :keyId";
		              
		    	   }
			       else if(categry.equals("nature"))
			       {
		    		   query = "update textedit as t set t.catg2 = :newName where t.admno = :keyId";
		               
		    	   }
			       else if(categry.equals("science"))
			       {
		    		    query = "update textedit as t set t.catg3 = :newName where t.admno = :keyId";
		               
		    	   }
			       else if(categry.equals("sports"))
			       {
		    		    query = "update textedit as t set t.catg4 = :newName where t.admno = :keyId";
		               
		    	   }
			       else if(categry.equals("java"))
			       {
		    		    query = "update textedit as t set t.catg5 = :newName where t.admno = :keyId";
		               
		    	   }
		    	   session.createQuery(query)
	               .setString("newName", name)//this will set the string 'newName' to name variable
	               .setString("keyId",admno)
	               .executeUpdate();
		    	   break;
		       }
		      
		       }
		      
		       if(f==0)
		       {
		    	   
               e=new textedit();
		       e.setAdmno(admno);
		       if(categry.equals("tech"))
		    	   e.setCatg1(name);
		       else if(categry.equals("nature")) 
		    	   e.setCatg2(name);
		       else if(categry.equals("science"))
		    	   e.setCatg3(name);
		       else if(categry.equals("sports"))
		    	   e.setCatg4(name);
		       else if(categry.equals("java"))
		    	   e.setCatg5(name);
		      
		       }
               session.save(e);
		       
	    	   session.getTransaction().commit();
		       session.close();
		       
		       
		       System.out.println(categry);
		       
		}
	
	}