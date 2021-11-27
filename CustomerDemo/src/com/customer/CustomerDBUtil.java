package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rsd = null;
	
	public static boolean validate(String username ,String password) {
	    

		try {
			//get database connection
			con = DBConnect.getConnection();
			
			//create a statement
			stmt = con.createStatement();
			
			//create a sql query
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			
			//execute the sql query
			rsd = stmt.executeQuery(sql);
			
			   if (rsd.next()) {
				isSuccess = true;
			} 
			
			else {
				isSuccess = false;
			}	
		} 
			     catch (Exception e) {
			     e.printStackTrace();
		}
		return isSuccess;		
	}
	
	
	public static List<Customer> getCustomer(String userName) {
		
		//create ArrayList
		ArrayList<Customer> cust = new ArrayList<>();
		
		try {
			
			//get database connection
			con = DBConnect.getConnection();
			
			//create a statement
			stmt = con.createStatement();
			
			//create a sql query
			String sql = "select * from customer where username='"+userName+"'";
			
			//execute the sql query
			rsd = stmt.executeQuery(sql);
			
			//process the result set
			while (rsd.next()) {
				
				   int id = rsd.getInt(1);
				   String NIC =rsd.getString(2);
		    	   String CustomerName = rsd.getString(3);
		    	   String AccountNumber =rsd.getString(4);
		    	   String PhoneNumber = rsd.getString(5);
		    	   String Email = rsd.getString(6);		    	  
		    	   String UserName = rsd.getString(7);
		    	   String Password =rsd.getString(8);
		    	   
				
				Customer cu = new Customer(id, NIC,CustomerName , AccountNumber,PhoneNumber,Email,UserName,Password);
				cust.add(cu);
			}
			
		} catch (Exception e) {
			
	}
	
		  //return list
          return cust;	
	}	
	



public static boolean insertcustomer(String NIC, String CustomerName,String AccountNumber,  String PhoneNumber, String Email, String UserName, String Password) {
	
	boolean isSuccess = false;
	
	try {
		
		//get database connection
		con = DBConnect.getConnection();
		
		//create a statement
		stmt = con.createStatement();
		
		//create a sql query
	    String sql = "insert into customer values (0,'"+NIC+"','"+ CustomerName+"','"+AccountNumber+"','"+PhoneNumber+"','"+Email+"','"+UserName+"','"+Password+"')";
	    
	  //execute the sql query
		int rsd = stmt.executeUpdate(sql);
		
		if(rsd > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




public static boolean updatecustomer(String id,String NIC,String CustomerName,String AccountNumber, String PhoneNumber, String Email, String UserName, String Password) {
	
	
	try {
		
		//execute the sql query
		con = DBConnect.getConnection();
		
		//create a statement
		stmt = con.createStatement();
		
		//create a sql query
		String sql = "update customer set NIC='"+NIC+"', customerName='"+ CustomerName+"',accountNumber='"+AccountNumber+"',phoneNumber='"+PhoneNumber+"',email='"+Email+"',username='"+UserName+"',password='"+Password+"'"
				+ "where id='"+id+"'";
		
		//execute the sql query
		int r = stmt.executeUpdate(sql);
		
		if(r> 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess; 
}



public static List<Customer> getCustomerDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		
		//get database connection
		con = DBConnect.getConnection();
		
		//create a statement
		stmt = con.createStatement();
		
		//create a sql query
		String sql = "select * from customer where id='"+convertedID+"'";
		
		//execute the sql query
		rsd = stmt.executeQuery(sql);
		
		while(rsd.next()) {
			int ID = rsd.getInt(1);
			String NIC = rsd.getString(2);
			String CustomerName = rsd.getString(3);
			String AccountNumber = rsd.getString(4);
			String PhoneNumber = rsd.getString(5);
			String Email = rsd.getString(6);
			String UserName = rsd.getString(7);
			String Password = rsd.getString(8);
			
			Customer c = new Customer(ID, NIC, CustomerName , AccountNumber,PhoneNumber,Email,UserName,Password);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
}



public static boolean deleteCustomer(String id) {
	
	int convid = Integer.parseInt(id);
	
	try {
		
		//get database connection
		con = DBConnect.getConnection();
		
		//create a statement
		stmt = con.createStatement();
		
		//create a sql query
		String sql = "delete from customer where id='"+convid+"'";
		
		//execute the sql query
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
}







