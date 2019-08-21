package niit.model;

import java.io.InputStream;

public class Employee {
	
	private String EmailId;
	private String Password;
	private String companyName;
	private String industryType;
	private String contactPersonName;
	private String designation;
	private String officeAddress;
	private String country;
	private String state;
	private String city;
	private String pincode;
	private String website;
	private String contactNumber;
	private String gst;
	private InputStream photo;
	
	
	public InputStream getPhoto() {
		return photo;
	}
	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}
	public Employee() {
		super();
	}
	public Employee(String emailId, String password, String companyName, String industryType, String contactPersonName,
			String designation, String officeAddress, String country, String state, String city, String pincode,
			String website, String contactNumber, String gst, InputStream photo) {
		super();
		EmailId = emailId;
		Password = password;
		this.companyName = companyName;
		this.industryType = industryType;
		this.contactPersonName = contactPersonName;
		this.designation = designation;
		this.officeAddress = officeAddress;
		this.country = country;
		this.state = state;
		this.city = city;
		this.pincode = pincode;
		this.website = website;
		this.contactNumber = contactNumber;
		this.gst = gst;
		this.photo=photo;
		
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getIndustryType() {
		return industryType;
	}
	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}
	public String getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getGst() {
		return gst;
	}
	public void setGst(String gst) {
		this.gst = gst;
	}
	

}

