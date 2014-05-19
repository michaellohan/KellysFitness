package ie.gmit.pojos;

public class MembershipLengthAmount {
String amount;
String length;
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "MembershipLengthAmount [amount=" + amount + ", length=" + length
			+ "]";
}
/**
 * @param amount
 * @param length
 */
public MembershipLengthAmount(String amount, String length) {
	super();
	this.amount = amount;
	this.length = length;
}
/**
 * @return the amount
 */
public String getAmount() {
	return amount;
}
/**
 * @param amount the amount to set
 */
public void setAmount(String amount) {
	this.amount = amount;
}
/**
 * @return the length
 */
public String getLength() {
	return length;
}
/**
 * @param length the length to set
 */
public void setLength(String length) {
	this.length = length;
}
}
