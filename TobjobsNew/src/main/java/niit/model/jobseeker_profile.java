package niit.model;

import java.util.Date;

public class jobseeker_profile {
	private String email;
	private String name;
	private Date dateofbirth;
	private String gender;
	private String address;
	private String state;
	private String city;
	private String zip;
	private String highestqualification;
	private String passingyear;
	private String boardname;
	private String percentage;
	private String skills;
	private String prefcity;
	private String salary;
	private String jobrole;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getHighestqualification() {
		return highestqualification;
	}
	public void setHighestqualification(String highestqualification) {
		this.highestqualification = highestqualification;
	}
	public String getPassingyear() {
		return passingyear;
	}
	public void setPassingyear(String passingyear) {
		this.passingyear = passingyear;
	}
	public String getBoardname() {
		return boardname;
	}
	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getPrefcity() {
		return prefcity;
	}
	public void setPrefcity(String prefcity) {
		this.prefcity = prefcity;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getJobrole() {
		return jobrole;
	}
	public void setJobrole(String jobrole) {
		this.jobrole = jobrole;
	}
	public jobseeker_profile(String email,String name, Date dateofbirth, String gender, String address, String state, String city,
			String zip, String highestqualification, String passingyear, String boardname, String percentage,
			String skills, String prefcity, String salary, String jobrole) {
		super();
		this.email=email;
		this.name = name;
		this.dateofbirth = dateofbirth;
		this.gender = gender;
		this.address = address;
		this.state = state;
		this.city = city;
		this.zip = zip;
		this.highestqualification = highestqualification;
		this.passingyear = passingyear;
		this.boardname = boardname;
		this.percentage = percentage;
		this.skills = skills;
		this.prefcity = prefcity;
		this.salary = salary;
		this.jobrole = jobrole;
	}
	public jobseeker_profile() {
		super();
	}
	
	
	

}
