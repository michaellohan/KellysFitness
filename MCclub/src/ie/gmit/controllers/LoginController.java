package ie.gmit.controllers;


import ie.gmit.datalayer.Dao;
import ie.gmit.pojos.Member;
import ie.gmit.security.Hashesh;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");//takes in email
		String passwordBeforeHash = request.getParameter("password");//takes in password
		System.out.println(email + passwordBeforeHash);
		String nextUrl = "/profile.jsp";//might need to change it dynamically later
		String password = Hashesh.MD5(passwordBeforeHash);
		String admin ="admin";
		String user ="user";
		if (email != null && password != null ) {
			List<Member> profileList = Dao.getMemberByEmailAndPassword(email, password);
			for (Member profileItem : profileList)
				if(profileItem.getMemberType() != null && admin != null && profileItem.getMemberType().equals(admin)){
					System.out.println("the admin  is working");
					nextUrl = "/AdminController";
					request.getRequestDispatcher(nextUrl).forward(request, response);
				}
				else if (profileItem.getMemberType().equals(user)) {
					nextUrl = "/profile.jsp";
					request.setAttribute("profileList", profileList);
					request.getRequestDispatcher(nextUrl).forward(request, response);
				}
			else { 
				nextUrl = "/login.html";	
			// need to send errors
				request.getRequestDispatcher(nextUrl).forward(request, response);
			}

		}

	}
	
}	