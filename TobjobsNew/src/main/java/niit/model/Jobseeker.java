package niit.model;

import java.io.InputStream;

public class Jobseeker {
	
	private String name;
	private String email;
	private String password;
	private String mobile;
	private String clocation;
	private InputStream usresume;
	
	
	public Jobseeker() {
		super();
	}
	public Jobseeker(String name, String email, String password, String mobile, String clocation,
			InputStream usresume) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mobile = mobile;
		this.clocation = clocation;
		this.usresume = usresume;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getClocation() {
		return clocation;
	}
	public void setClocation(String clocation) {
		this.clocation = clocation;
	}
	public InputStream getUsresume() {
		return usresume;
	}
	public void setUsresume(InputStream usresume) {
		this.usresume = usresume;
	}
	
	

}
