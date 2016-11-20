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
 * Servlet implementation class dbrec
 */
@WebServlet("/dbrec")
public class dbrec extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory =  new Configuration().configure().buildSessionFactory();        		
	      String ad=request.getParameter("t2");
	      Session session =	sessionFactory.openSession();
	      session.beginTransaction();
	      
	      String adm;
	      Query queryResult = session.createQuery("from textedit");
	       java.util.List allUsers;
	       allUsers = queryResult.list();
	       System.out.println(allUsers.size());
	       textedit e=new textedit();
	       for (int i = 0; i < allUsers.size(); i++) {
	       e=(textedit)allUsers.get(i);
	         String catg= e.getCatg1();
	         String catg2= e.getCatg2();
	         String catg3= e.getCatg3();
	         String catg4= e.getCatg4();
	         String catg5= e.getCatg5();
	        
	      response.setContentType("text/html");
	       request.setAttribute("t2",catg3 );
	       request.getRequestDispatcher("/edit.jsp").forward(request, response);
	        
	         
	}

}
}