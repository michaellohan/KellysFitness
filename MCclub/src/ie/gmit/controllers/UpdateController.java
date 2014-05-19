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
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String update = request.getParameter("update");//takes in email
		String email = request.getParameter("email");//takes in email
		String passwordBeforeHash = request.getParameter("password");//takes in email
		String password = Hashesh.MD5(passwordBeforeHash);
		System.out.println(update);
		String nextUrl = "/profile.jsp";


		List<Member> list = Dao.getMemberByEmailAndPassword(email, password);
		for (Member item : list)
			if (item.getAbout() != null && update != null){
				System.out.println(item);
				item.setAbout(update);	
				Member member = new Member(item.getMemId(), item.getDob(), item.getCounty(), item.getTown(), item.getStreet(), item.getLastName(), item.getFirstName(), password, item.getEmail(), item.getMemberType(), item.getPhoneNum(), item.getImage(), update);
				Dao.updateMember(member);
				
				List<Member> profileList = Dao.getMemberByEmailAndPassword(email, password);

				for (Member profileItem : profileList)
					System.out.println(profileItem + "    done and done");
					request.setAttribute("profileList", profileList);

				System.out.println("adding update");
				request.getRequestDispatcher(nextUrl).forward(request, response);
			}else{

				nextUrl = "/profile.jsp";
				System.out.println("no update");
				request.getRequestDispatcher(nextUrl).forward(request, response);

			}


	}

}
