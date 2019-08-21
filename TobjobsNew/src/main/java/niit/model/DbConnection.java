package niit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DbConnection {
	
	public Connection getConnection() throws Exception {
		
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/TopJobsdb?useSSL=false&allowPublicKeyRetrieval=true","root","deb@96");
			    return connection;
	}

}
