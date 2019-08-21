package niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import niit.model.Applicant;
import niit.model.DbConnection;
import niit.model.Employee;
import niit.model.Jobs;
import niit.model.Jobseeker;

public class EmployeeDaoImpl {
	public boolean makeUserRegistration(Employee employee)
	{
		boolean status=false;
		try {
			Connection con=new niit.model.DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into Employer values(?,?,?,?,?,"
					+ "?,?,?,?,?,"
					+ "?,?,?,?,?)");
			smt.setString(1,employee.getEmailId());
			smt.setString(2,employee.getPassword());
			smt.setString(3,employee.getCompanyName());
			smt.setString(4,employee.getIndustryType());
			smt.setString(5,employee.getContactPersonName());
			
			smt.setString(6,employee.getDesignation());
			smt.setString(7,employee.getOfficeAddress());
			smt.setString(8,employee.getCountry());
			smt.setString(9,employee.getState());
			smt.setString(10,employee.getCity());
			
			smt.setString(11,employee.getPincode());
			smt.setString(12,employee.getWebsite());
			smt.setString(13,employee.getContactNumber());
			smt.setString(14,employee.getGst());
			smt.setBlob(15,employee.getPhoto());
			
			int result=smt.executeUpdate();
			con.close();
			if(result>0)
				status=true;
		}
		catch(Exception e)
		{
			System.out.println("ER:"+e);
			
		}
		return status;
	}
	
	public boolean makeEmpLogin(Employee employee) {
		boolean status=false;
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from employer where emailid=? and pwd=?");
			smt.setString(1,employee.getEmailId());
			smt.setString(2,employee.getPassword());
			
			ResultSet result = smt.executeQuery();
			if(result.next())
				status=true;
			
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		System.out.println("Stusss:"+status);
		return status;
	}
	
	public boolean makeJobPost(Jobs jobs)
	{
		boolean status=false;
		try {
			Connection con=new niit.model.DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into jobs (emailid,Job_Description,salary,industry_type,function_area,role_category,"
					+ "r_role,Key_skills,education,experience,Location) "
					+ "values (?,?,?,?,?,?,?,?,?,?,?)");
			smt.setString(1, jobs.getEmailid());
			smt.setString(2, jobs.getJobDescription());
			smt.setString(3, jobs.getSalary());
			smt.setString(4, jobs.getIndustryType());
			smt.setString(5, jobs.getFunctionalArea());
			smt.setString(6, jobs.getRoleCategory());
			smt.setString(7, jobs.getRole());
			smt.setString(8, jobs.getKeySkills());
			smt.setString(9, jobs.getEducation());
			smt.setString(10, jobs.getExperience());
			smt.setString(11,jobs.getLocation());
		int result=smt.executeUpdate();
			con.close();
			if(result>0)
				status=true;
		}
		catch(Exception e)
		{
			System.out.println("ER:"+e);
			
		}
		return status;
	}
	
	public  ArrayList<Jobs> Viewjob(Employee employee) {
		ArrayList<Jobs> jlist = new ArrayList<Jobs>();
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from jobs where emailid=? order by dt_of_post");
			smt.setString(1,employee.getEmailId());
			ResultSet result = smt.executeQuery();
			while(result.next()) {
				Jobs jobs= new Jobs();
				jobs.setJobid(result.getInt(1));
				jobs.setJobDescription(result.getString(3));
				jobs.setRole(result.getString(8));
				jobs.setLocation(result.getString(12));
				jobs.setSalary(result.getString(4));
				jobs.setIndustryType(result.getString(5));
				jobs.setFunctionalArea(result.getString(6));
				jobs.setRoleCategory(result.getString(7));
				jobs.setExperience(result.getString(11));
				jobs.setEducation(result.getString(10));
				jobs.setEmailid(result.getString(2));
				jobs.setJob_status(result.getString(14));
				jlist.add(jobs);
			}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return jlist;
  

 }
	public  ArrayList<Jobseeker> ViewApplicant(Jobs jobs ) {
		ArrayList<Jobseeker> alist = new ArrayList<Jobseeker>();
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("Select * from jobseeker where email in(Select email from applicant where job_id=?)");
			smt.setInt(1,jobs.getJobid());
			ResultSet result = smt.executeQuery();
			while(result.next()) {
				Jobseeker jobseeker=new Jobseeker();
				jobseeker.setName(result.getString(1));
				jobseeker.setEmail(result.getString(2));
				jobseeker.setMobile(result.getString(4));
				jobseeker.setClocation(result.getString(5));
				alist.add(jobseeker);
			}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return alist;
  

 }
public int checkScheme(Employee employee) 
{       int time=-1;
		try{
		Connection con= new DbConnection().getConnection();
		PreparedStatement smt = con.prepareStatement("Select datediff(dateofexp,CURRENT_DATE) from employee_scheme where dateofexp > CURRENT_DATE and emailid=?");
		smt.setString(1,employee.getEmailId());
		ResultSet rs= smt.executeQuery();
		if(rs.next()) {
			time = rs.getInt(1);
			if(time>=0)
				time= 1;  // valid as well as scheme not expire
			
			else
				time= -1; // // valid but scheme  expire
			
		}
		rs.close();
		con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		System.out.println("time:"+time);
		return time;
		
}
}
