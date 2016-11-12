package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.javabrain.Userdet;
import org.javabrain.dto.hiberterst;

/**
 * Servlet implementation class resp
 */
@WebServlet("/resp")

public class resp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

		       String s;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String name=request.getParameter("t1");
		String pass=request.getParameter("t2");
		String email=request.getParameter("t4");
		String admno=request.getParameter("t5");
		String repass=request.getParameter("t3");
		if(pass.equals(repass))
		{
			
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
<<<<<<< HEAD
		       response.sendRedirect("h.html");
=======
		       response.setContentType("text/html");
		       request.setAttribute("t2", s);
		       request.getRequestDispatcher("/dash.jsp").forward(request, response);

>>>>>>> branch 'master' of https://github.com/sarthak-97/blog.git
		           } 
		           else
		           {   System.out.println("duplicate");
		           }
		         
		}

		
		else
		{
			System.out.println("pass do not match");
			System.out.println(pass);
			System.out.println(repass);
		}
		
		}
	}
	
	


	       
