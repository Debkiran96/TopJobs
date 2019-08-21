package niit.model;

import java.util.Date;

public class Jobs {
	private int jobid;
	private String emailid;
	private String jobDescription;
	private String salary;
	private String industryType;
	private String functionalArea;
	private String roleCategory;
	private String role;
	private String keySkills;
	private String education;
	private String experience;
	private String location;
	private Date dt_of_post;
	private String job_status;
	
	
	
	public String getJob_status() {
		return job_status;
	}


	public void setJob_status(String job_status) {
		this.job_status = job_status;
	}


	public Date getDt_of_post() {
		return dt_of_post;
	}


	public void setDt_of_post(Date dt_of_post) {
		this.dt_of_post = dt_of_post;
	}


	public Jobs() {
		super();
	}





	public Jobs(int jobid, String emailid, String jobDescription, String salary, String industryType,
			String functionalArea, String roleCategory, String role, String keySkills, String education,
			String experience, String location, Date dt_of_post, String job_status) {
		super();
		this.jobid = jobid;
		this.emailid = emailid;
		this.jobDescription = jobDescription;
		this.salary = salary;
		this.industryType = industryType;
		this.functionalArea = functionalArea;
		this.roleCategory = roleCategory;
		this.role = role;
		this.keySkills = keySkills;
		this.education = education;
		this.experience = experience;
		this.location = location;
		this.dt_of_post = dt_of_post;
		this.job_status = job_status;
	}


	public int getJobid() {
		return jobid;
	}


	public void setJobid(int jobid) {
		this.jobid = jobid;
	}


	public String getEmailid() {
		return emailid;
	}


	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}


	public String getJobDescription() {
		return jobDescription;
	}
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getIndustryType() {
		return industryType;
	}
	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}
	public String getFunctionalArea() {
		return functionalArea;
	}
	public void setFunctionalArea(String functionalArea) {
		this.functionalArea = functionalArea;
	}
	public String getRoleCategory() {
		return roleCategory;
	}
	public void setRoleCategory(String roleCategory) {
		this.roleCategory = roleCategory;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getKeySkills() {
		return keySkills;
	}
	
	public void setKeySkills(String keySkills) {
		this.keySkills = keySkills;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
}
