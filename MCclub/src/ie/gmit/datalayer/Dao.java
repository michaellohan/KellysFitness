package ie.gmit.datalayer;




import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;








import ie.gmit.pojos.Member;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Dao {
	public static void addMember(Member  member) {
		//Working and tested
		Transaction trns = null;
		Session session = Utill.getSessionFactory().openSession();
		try {

			trns = session.beginTransaction();
			System.out.println(member + "this is before save");
			session.save(member);
			System.out.println(member + "this is before commit");
			session.getTransaction().commit();
			System.out.println(member + "this is after commit");
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
	}
public static List<Member> getMemberByEmailAndPassword(String email, String password) {
		
		Member member = null;
		Transaction trns = null;
		Session session = Utill.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			String queryString = "from Member where email = :email and password = :password";
			Query query = session.createQuery(queryString);
			query.setString("email", email);
			query.setString("password", password);
			member = (Member) query.uniqueResult();
			
			
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		List<Member> list = new LinkedList<Member>();
		list.add(member);
		return list;
	}
public static void deleteMember(int memId) {
	//Working and tested
	Transaction trns = null;
	Session session = Utill.getSessionFactory().openSession();
	try {
		trns = session.beginTransaction();
		Member member = (Member) session.load(Member.class, new Integer(memId));
		session.delete(member);
		session.getTransaction().commit();
	} catch (RuntimeException e) {
		if (trns != null) {
			trns.rollback();
		}
		e.printStackTrace();
	} finally {
		session.flush();
		session.close();
	}
}

public static void updateMember(Member member) {
	Transaction trns = null;
	Session session = Utill.getSessionFactory().openSession();
	try {
		trns = session.beginTransaction();
	
		session.update(member);
		session.getTransaction().commit();
		System.out.println("updating this member" + member);
	} catch (RuntimeException e) {
		if (trns != null) {
			trns.rollback();
		}
		e.printStackTrace();
	} finally {
		session.flush();
		session.close();
	}
}
public static List<Member> listMembers(){
	Session session = Utill.getSessionFactory().openSession();
    Transaction tx = null;
    List memberList = new LinkedList<>();
    try{
       tx = session.beginTransaction();
       memberList = session.createQuery("FROM Member").list(); 
       for (Iterator iterator = 
                         memberList.iterator(); iterator.hasNext();){
          Member m = (Member) iterator.next(); 
          System.out.println("  memId: " + m.getMemId()); 
          System.out.print("First Name: " + m.getFirstName()); 
          System.out.print("  Last Name: " + m.getLastName()); 
         
       }
       tx.commit();
    }catch (HibernateException e) {
       if (tx!=null) tx.rollback();
       e.printStackTrace(); 
    }finally {
       session.close(); 
    }
    
	return memberList;
 }
public static List<Member> getMemberById(int memId) {
	
	Member member = null;
	Transaction trns = null;
	Session session = Utill.getSessionFactory().openSession();
	try {
		trns = session.beginTransaction();
		String queryString = "from Member where memId = :memId";
		Query query = session.createQuery(queryString);
		query.setInteger("memId", memId);

		member = (Member) query.uniqueResult();
		
		
	} catch (RuntimeException e) {
		e.printStackTrace();
	} finally {
		session.flush();
		session.close();
	}
	List<Member> list = new LinkedList<Member>();
	list.add(member);
	return list;
}
}