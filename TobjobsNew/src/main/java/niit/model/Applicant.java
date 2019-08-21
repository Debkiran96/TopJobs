package niit.model;

import java.util.Date;

public class Applicant {
	
	private int applicant_id;
	private int job_id;
	private String email;
	private String applicant_status;
	private Date date_of_application;
	public int getApplicant_id() {
		return applicant_id;
	}
	public void setApplicant_id(int applicant_id) {
		this.applicant_id = applicant_id;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getApplicant_status() {
		return applicant_status;
	}
	public void setApplicant_status(String applicant_status) {
		this.applicant_status = applicant_status;
	}
	public Date getDate_of_application() {
		return date_of_application;
	}
	public void setDate_of_application(Date date_of_application) {
		this.date_of_application = date_of_application;
	}
	public Applicant(int applicant_id, int job_id, String email, String applicant_status, Date date_of_application) {
		super();
		this.applicant_id = applicant_id;
		this.job_id = job_id;
		this.email = email;
		this.applicant_status = applicant_status;
		this.date_of_application = date_of_application;
	}
	public Applicant() {
		super();
	}
	
	
	

}
