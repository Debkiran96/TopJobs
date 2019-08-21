package niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import niit.model.DbConnection;
import niit.model.Schemes;


public class ScehemsDaoImpl {

	public  List<Schemes> viewSchemes() {
		List<Schemes> slist = new ArrayList<Schemes>();
		try {
			Connection con= new DbConnection().getConnection();
			PreparedStatement smt = con.prepareStatement("select * from schemes order by duration");
		  	ResultSet result = smt.executeQuery();
			while(result.next()) {
				Schemes s= new Schemes();
				s.setSid(result.getInt(1));
				s.setSname(result.getString(2));
				s.setDescr(result.getString(3));
				s.setDuration(result.getInt(4));
				s.setFee(result.getInt(5));
				slist.add(s);
				}
			con.close();
			}
		catch(Exception e) {
			System.out.println(e);  
			}
		return slist;
   }
}
