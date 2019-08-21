package niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import niit.model.Applicant;
import niit.model.DbConnection;
import niit.model.Employee;
import niit.model.Jobs;
import niit.model.Jobseeker;
import niit.model.jobseeker_profile;



public class JobseekerDaoImpl {
	public boolean makeJobseekerRegistration(Jobseeker jobseeker)
	{
		boolean status=false;
		try {
			Connection con=new niit.model.DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into jobseeker values(?,?,?,?,?,?)");
			smt.setString(1, jobseeker.getName());
			smt.setString(2, jobseeker.getEmail());
			smt.setString(3, jobseeker.getPassword());
			smt.setString(4, jobseeker.getMobile());
			smt.setString(5, jobseeker.getClocation());
			smt.setBlob(6, jobseeker.getUsresume());
			

			
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
	
	public boolean makeJobseekerLogin(Jobseeker jobseeker) {
		boolean status=false;
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from jobseeker where email=? and password=?");
			smt.setString(1,jobseeker.getEmail());
			smt.setString(2,jobseeker.getPassword());
			
			ResultSet result = smt.executeQuery();
			if(result.next())
				status=true;
			
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return status;
	}

	
	
	public boolean makeJobseekerProfile(jobseeker_profile jobskr)
	{
		boolean status=false;
		try {
			Connection con=new niit.model.DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into jobseeker_profile (email,name,dateofbirth,gender,address,state,city,zip,highestqualification,"+
			"passingyear,boardname,percentage,skills,prefcity,salary,jobrole) " +
			"values(?,?,?,?,?, ?,?,?,?,?, ?,?,?,?,?, ?)");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");  
			smt.setString(1,jobskr.getEmail());
			smt.setString(2, jobskr.getName());
			smt.setString(3, sdf.format(jobskr.getDateofbirth()));
			smt.setString(4, jobskr.getGender());
			smt.setString(5, jobskr.getAddress());
			smt.setString(6, jobskr.getState());
			
			smt.setString(7, jobskr.getCity());
			smt.setString(8, jobskr.getZip());
			smt.setString(9, jobskr.getHighestqualification());
			smt.setString(10, jobskr.getPassingyear());
			smt.setString(11, jobskr.getBoardname());
			
			smt.setString(12, jobskr.getPercentage());
			smt.setString(13, jobskr.getSkills());
			smt.setString(14, jobskr.getPrefcity());
			smt.setString(15, jobskr.getSalary());
			smt.setString(16, jobskr.getJobrole());
			
			
			
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
	
	public  jobseeker_profile searchJobseekerById(String email) {
		jobseeker_profile obj = null;
		try {
			//email="ddd@gmail.com";
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from jobseeker_profile where email=?");
			smt.setString(1, email);
			ResultSet result = smt.executeQuery();
			if(result.next()) {
				obj= new jobseeker_profile();
				obj.setEmail(result.getString(2));
				obj.setName(result.getString(3));
				obj.setGender(result.getString(5));
				obj.setAddress(result.getString(6));
				obj.setState(result.getString(7));
				
				/*
				 * jobs.setJobid(result.getInt(1)); jobs.setJobDescription(result.getString(3));
				 * jobs.setRole(result.getString(8)); jobs.setLocation(result.getString(12));
				 * jobs.setSalary(result.getString(4));
				 * jobs.setIndustryType(result.getString(5));
				 * jobs.setFunctionalArea(result.getString(6));
				 * jobs.setRoleCategory(result.getString(7));
				 * jobs.setExperience(result.getString(11));
				 * jobs.setEducation(result.getString(10));
				 * jobs.setEmailid(result.getString(2)); 
				 * jlist.add(jobs);
				 */
				
			}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		System.out.println("obj:"+obj);
		return obj;
  

 }
	public  ArrayList<Jobs> viewJobs() {
		ArrayList<Jobs> jlist = new ArrayList<Jobs>();
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from jobs where job_status='Yes' and datediff(curdate(),dt_of_post)<31");
			
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
				jlist.add(jobs);
			}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return jlist;
  

 }
	
	public boolean makeJobApplication(Applicant applicant)
	{
		boolean status=false;
		try {
			Connection con=new niit.model.DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into applicant (job_id,email) values(?,?)");
			smt.setInt(1, applicant.getJob_id());
			smt.setString(2, applicant.getEmail());
			
			

			
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
	
	public  ArrayList<Jobs> Searchjob(Jobs jobs) {
		ArrayList<Jobs> jlist = new ArrayList<Jobs>();
		try {
			Connection con= new DbConnection().getConnection();
			//PreparedStatement smt = con.prepareStatement("select * from jobs where location like ? and Industry_Type like ? and Function_Area like ? and Experience like ? and Education like ?  and key_skills like ? and job_status='No' and datediff(curdate(),dt_of_post)<31");
			PreparedStatement smt = con.prepareStatement("select * from jobs where location like ? and Industry_Type like ? and Function_Area like ? and Experience like ? and Education like ?   and job_status='Yes' ");// and datediff(curdate(),dt_of_post)<31");
		    if(jobs.getLocation().length()!=0) 
		    	smt.setString(1,jobs.getLocation() );
		    else
		    	smt.setString(1,"%");

		    if(jobs.getIndustryType().length()!=0)
		    	smt.setString(2,jobs.getIndustryType() );
		    else
		    	smt.setString(2, "%");
		    
		    if(jobs.getFunctionalArea().length()!=0)
		    	smt.setString(3,jobs.getFunctionalArea() );
		    else
		    	smt.setString(3, "%");
		    
		    if(jobs.getExperience().length()!=0)
		    smt.setString(4,jobs.getExperience());
		   else
		    	smt.setString(4, "%");
		    
		    if(jobs.getEducation().length()!=0)
		    smt.setString(5,jobs.getEducation() );
		    else
		    	smt.setString(5, "%");
		    
			/*
			 * if(jobs.getKeySkills().length()!=0) smt.setString(6,jobs.getKeySkills() );
			 * 
			 * else smt.setString(6, "%");
			 */
		    
		    String userRequiredSkill = jobs.getKeySkills();
		    
			ResultSet result = smt.executeQuery();
			while(result.next()) {
				
				String jobKeySkill = result.getString(9);
				String a[] = jobKeySkill.split(",");
				boolean flag=false;
				for(int i=0;i<a.length;i++) {
					if(a[i].toUpperCase().indexOf(userRequiredSkill.toUpperCase())!=-1) {
						flag=true;
						break;
					}
				}
				if(flag) {				
				Jobs job= new Jobs();
				job.setJobDescription(result.getString(3));
				job.setRole(result.getString(8));
				job.setLocation(result.getString(12));
				job.setSalary(result.getString(4));
				job.setIndustryType(result.getString(5));
				job.setFunctionalArea(result.getString(6));
				job.setRoleCategory(result.getString(7));
				job.setExperience(result.getString(11));
				job.setEducation(result.getString(10));
				job.setKeySkills(jobKeySkill);
				jlist.add(job);
				}
			}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return jlist;
   }

public boolean writeMsg(String uid, String msg) {
	System.out.println("uid:"+uid+"  "+msg);
		boolean flag=false;
		Connection con;
		try {
			con = new DbConnection().getConnection();
			PreparedStatement smt=con.prepareStatement("insert into messages (email,msginfo) values(?,?)");
			smt.setString(1, uid);
			smt.setString(2, msg);
			int res = smt.executeUpdate();
			System.out.println("res:"+res);
			con.close();
			if(res>0)
			flag=true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}


public boolean editJobseekerProfile(jobseeker_profile jobskr)
{
	boolean status=false;
	try {
		Connection con=new niit.model.DbConnection().getConnection();
		PreparedStatement smt=con.prepareStatement("update  jobseeker_profile set name=?,address=?,state=? where email=?");

		smt.setString(1, jobskr.getName());
		smt.setString(2, jobskr.getAddress());
		smt.setString(3, jobskr.getState());
		smt.setString(4, jobskr.getEmail());
		
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
	
}

