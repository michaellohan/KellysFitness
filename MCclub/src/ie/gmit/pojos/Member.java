package ie.gmit.pojos;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Member {
	int memId;
	String dob; 
	String county; 
	String town; 
	String street; 
	String lastName; 
	String firstName; 
	String password; 
	String email;
	String memberType;
	String phoneNum;
	String image;
	String about;
	/**
	 * @return the memId
	 */
	@GeneratedValue
	@Id
	@Column(name = "memId")
	public int getMemId() {
		return memId;
	}
	/**
	 * @param memId the memId to set
	 */
	public void setMemId(int memId) {
		this.memId = memId;
	}
	/**
	 * @return the dob
	 */
	public String getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(String dob) {
		this.dob = dob;
	}
	/**
	 * @return the county
	 */
	public String getCounty() {
		return county;
	}
	/**
	 * @param county the county to set
	 */
	public void setCounty(String county) {
		this.county = county;
	}
	/**
	 * @return the town
	 */
	public String getTown() {
		return town;
	}
	/**
	 * @param town the town to set
	 */
	public void setTown(String town) {
		this.town = town;
	}
	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}
	/**
	 * @param street the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the password
	 */
	@Column(name = "password")
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the email
	 */
	@Column(name = "email")
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the memberType
	 */
	public String getMemberType() {
		return memberType;
	}
	/**
	 * @param memberType the memberType to set
	 */
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	/**
	 * @return the phoneNum
	 */
	public String getPhoneNum() {
		return phoneNum;
	}
	/**
	 * @param phoneNum the phoneNum to set
	 */
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @return the about
	 */
	public String getAbout() {
		return about;
	}
	/**
	 * @param about the about to set
	 */
	public void setAbout(String about) {
		this.about = about;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Member [memId=" + memId + ", dob=" + dob + ", county=" + county
				+ ", town=" + town + ", street=" + street + ", lastName="
				+ lastName + ", firstName=" + firstName + ", password="
				+ password + ", email=" + email + ", memberType=" + memberType
				+ ", phoneNum=" + phoneNum + ", image=" + image + ", about="
				+ about + "]";
	}
	/**
	 * @param memId
	 * @param dob
	 * @param county
	 * @param town
	 * @param street
	 * @param lastName
	 * @param firstName
	 * @param password
	 * @param email
	 * @param memberType
	 * @param phoneNum
	 * @param image
	 * @param about
	 */
	public Member(int memId, String dob, String county, String town,
			String street, String lastName, String firstName, String password,
			String email, String memberType, String phoneNum, String image,
			String about) {
		super();
		this.memId = memId;
		this.dob = dob;
		this.county = county;
		this.town = town;
		this.street = street;
		this.lastName = lastName;
		this.firstName = firstName;
		this.password = password;
		this.email = email;
		this.memberType = memberType;
		this.phoneNum = phoneNum;
		this.image = image;
		this.about = about;
	}
	/**
	 * @param list 
	 * 
	 */
	public Member(List<Member> list) {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 */
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

}
