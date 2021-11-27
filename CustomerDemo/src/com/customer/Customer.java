package com.customer;

public class Customer {

	//define the field
	
	private int id;
	private String NIC;
    private String CustomerName;
    private String AccountNumber; 
    private String PhoneNumber;
    private String Email;
    private String UserName;
	private String Password;
   
    
	//set the attribute
	
    public Customer(int id, String NIC, String customerName,String accountNumber, String phoneNumber, String email, String userName, String password) {
    
    	
    	this.id = id;
    	this.NIC = NIC;
		this.CustomerName = customerName;	
		this.AccountNumber = accountNumber;
		this.PhoneNumber = phoneNumber;
		this.Email = email;
		this.UserName = userName;
		this.Password = password;
		
    }


     //generate getters
    
            public int getId() {
	           return id;
             }
            public String getNIC() {
	             return NIC;
           }

            public String getCustomerName() {
	           return CustomerName;
             }   
            public String getAccountNumber() {
 	           return AccountNumber;
              }

            public String getPhoneNumber() {
	            return PhoneNumber;
             }
            
            public String getEmail() {
            	return Email;
             }
            
            public String getUserName() {
	            return UserName;
             }

            public String getPassword() {
	            return Password;
             }

             
    
    
}