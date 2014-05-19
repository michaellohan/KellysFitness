package ie.gmit.controllers;

import ie.gmit.datalayer.Dao;
import ie.gmit.pojos.Member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditDeleteController
 */
@WebServlet("/EditDeleteController")
public class EditDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextUrl = "/AdminController";
		// determine if it is delete of edit
		String memIdString = request.getParameter("memId");
		int memId = 0;
		
		if (memIdString != null){memId = Integer.parseInt(memIdString);
		}else{System.out.println("memId was null");}
		
		String type = request.getParameter("type");
		
		if (type != null && type.equals("edit")){
			System.out.println("type was edit  " + memId);
			nextUrl = "/admin.jsp";
			//edit stuff
			List<Member> memberList = Dao.getMemberById(memId);
			System.out.println("got list from the memId  "+  memberList);
			//send back response
			request.setAttribute("memberList", memberList);
			for (Member memberItem : memberList){
				System.out.println(memberItem);
				//send them to admin page
				System.out.println("sending response back to admin after edit");
			}
			
		} else if (type != null && type.equals("delete")){
			System.out.println("type was delete "  + memId);
			Dao.deleteMember(memId);
			nextUrl = "/AdminController";

		}else{System.out.println("type was null");}
		
		request.getRequestDispatcher(nextUrl).forward(request, response);

}
}
