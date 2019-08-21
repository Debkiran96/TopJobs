package niit.model;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailing {
 String receipent;
 String subject;
 String body;
public String getReceipent() {
	return receipent;
}
public void setReceipent(String receipent) {
	this.receipent = receipent;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getBody() {
	return body;
}
public void setBody(String body) {
	this.body = body;
}
 
public void sendMail() {

	final String username = "nishamotibun111@gmail.com";
	final String password = "nisha12345#";
    Properties prop = new Properties();
    prop.put("mail.smtp.host", "smtp.gmail.com");
	prop.put("mail.smtp.port", "587");
	prop.put("mail.smtp.auth", "true");
	prop.put("mail.smtp.starttls.enable", "true"); //TLS
	        
	Session session = Session.getInstance(prop,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });
	
	 //compose the message  
    try{  
       MimeMessage message = new MimeMessage(session);  
       message.setFrom(new InternetAddress(username));  
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(receipent));  
       message.setSubject(subject);  
       message.setText(body); 

       // Send message  
       Transport.send(message);  
       System.out.println("message sent successfully....");  

    }catch (MessagingException mex) {mex.printStackTrace();}  
    

	    }
}
