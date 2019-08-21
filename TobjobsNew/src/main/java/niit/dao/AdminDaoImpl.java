package niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import niit.model.Admin;
import niit.model.DbConnection;
import niit.model.Employee;
import niit.model.Jobs;


public class AdminDaoImpl {
	
	public boolean makeAdminLogin(Admin admin) {
		boolean status=false;
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from topjob_admin where username=? and userpass=?");
			
			smt.setString(1,admin.getUsername());
			smt.setString(2,admin.getUserpass());
			
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
	public  ArrayList<Jobs> ViewNewjob() {
		ArrayList<Jobs> jlist = new ArrayList<Jobs>();
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from jobs where  job_status='No'");
			
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
	
	public boolean changeJobStatus(String jobid, String button) {
		boolean status=false;
		try {
			int val = Integer.parseInt(button);
			String sql=null;
			if(val==1) {
				sql = "update jobs set job_status='Yes' where job_id=?";
			}
			else  if(val==2){
				sql = "delete from jobs where job_id=?";
			}
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement(sql);
			
			smt.setString(1,jobid);
			int result = smt.executeUpdate();
			if(result>0)
				status=true;
			
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return status;
	}
}
