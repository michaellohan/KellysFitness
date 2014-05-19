import ie.gmit.datalayer.Dao;
import ie.gmit.pojos.Member;
import ie.gmit.security.Hashesh;


public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String password = Hashesh.MD5("pass");
		Member member = new Member(0, "27/04/1982", "county", "town", "street", "lohan", "michael", password, "admin@email.com", "admin", "087 555 1234", "andrew", "This is some stuff about me, things I like to do and such. What i want to achieve, goals and help i might need.");
		Dao.addMember(member);
	}

}
