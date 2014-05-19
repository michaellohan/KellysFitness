package ie.gmit.controllers;

import ie.gmit.datalayer.Dao;
import ie.gmit.pojos.Member;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get all people in the db
		
		System.out.println("hitting the admin controller and going to dao get all");
		List<Member> memberList = Dao.listMembers();
		 for (Iterator iterator =   memberList.iterator(); 
				 iterator.hasNext();){
  Member m = (Member) iterator.next(); 
  System.out.print("First Name: " + m.getFirstName()); 
  System.out.print("  Last Name: " + m.getLastName()); 
  System.out.println("  memId: " + m.getMemId()); 
  System.out.println("   from the iterator in the admin controller");
}
		request.setAttribute("memberList", memberList);
		for (Member memberItem : memberList){
			System.out.println(memberItem);
			//send them to admin page
			System.out.println("from the for loop admin controller output");
		}
			String nextUrl = "/admin.jsp";
			request.getRequestDispatcher(nextUrl).forward(request, response);
		}
		

	}


