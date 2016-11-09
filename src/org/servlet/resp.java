package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			
		
	      PrintWriter out = response.getWriter();
			
			hiberterst s1=new hiberterst();
			s1.values(name, pass, email,admno);
		}
		else
		{
			System.out.println("pass do not match");
			System.out.println(pass);
			System.out.println(repass);
		}
		
		}
	}
	
	


	       
