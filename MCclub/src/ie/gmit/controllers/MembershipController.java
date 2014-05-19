package ie.gmit.controllers;




import ie.gmit.datalayer.Dao;
import ie.gmit.pojos.Member;
import ie.gmit.pojos.MembershipLengthAmount;
import ie.gmit.security.Hashesh;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MembershipController
 */
@WebServlet("/MembershipController")
public class MembershipController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MembershipController() {
		super();
		// TODO Auto-generated constructor stub
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		// TODO Auto-generated method stub
		String membershipAmount = null;
		String membershipLength = request.getParameter("membershipLength");
		String oneMonth = "1 Month";
		String threeMonths = "3 Months";
		
		if (membershipLength == null){
		membershipAmount ="null length";
		}
		else if (membershipLength.equals(oneMonth)){
				membershipAmount = "3000";
			}else if (membershipLength.equals(threeMonths)){
				membershipAmount = "8000";
			}else {
				membershipAmount = "30000";
			}
	
		
		System.out.println(membershipLength + " " + membershipAmount);
		String nextUrl = "/sign-up.jsp";//might need to change it dynamically later


		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String passwordBeforeHash = request.getParameter("password");
		String passwordBeforeHash2 = request.getParameter("password2");
		String phoneNum = request.getParameter("phoneNum");
		String street = request.getParameter("street");
		String DOB = request.getParameter("DOB");
		String town = request.getParameter("town");
		String county= request.getParameter("county");
		String membershipType="user"; 
		String image = null;
		String about = "hello";
		//need to do some password verification
		//hash the password before storing
		String password = Hashesh.MD5(passwordBeforeHash);
		
		if (email != null){
		
			Member member = new Member(0, DOB, county, town, street, lastName, firstName, password, email, membershipType, phoneNum, image, about);
			Dao.addMember(member);
			System.out.println("1st if " + member);
			nextUrl = "/profile.jsp";
			
	         ArrayList<Member> profileList = new ArrayList<>();
	            profileList.add(member);
			request.setAttribute("profileList", profileList);
			for (Member profileItem : profileList){
				System.out.println(profileItem);}
			
			request.getRequestDispatcher(nextUrl).forward(request, response);
		}else{

            System.out.println(" 2nd if");
            nextUrl = "/sign-up.jsp";
            
            MembershipLengthAmount values = new MembershipLengthAmount(membershipAmount, membershipLength);
           
            ArrayList<Object> list = new ArrayList<>();
            list.add(values);
			request.setAttribute("list", list);	
			request.getRequestDispatcher(nextUrl).forward(request, response);
		}

	}

}
