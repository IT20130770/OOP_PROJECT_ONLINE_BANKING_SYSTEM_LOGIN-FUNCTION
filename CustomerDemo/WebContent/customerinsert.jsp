<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style> 
 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: comic sans ms;
 }

 body {
     background:url(https://treasurytoday.com/-/media/images/cash-and-liquidity-management/cash-management/20190102tt07bktechnologynetworkonlinebankinginternetnetworkingss6922969871920x1080.jpg)no-repeat;
background-size:1700px;
 }

 .wrapper {
     max-width: 400px;
     min-height: 500px;
     margin: 80px auto;
     padding: 40px 30px 30px 30px;
     background-color:#B4CFEC;
     border-radius: 15px;
     box-shadow: 3px 3px 8px #cbced1, -3px -3px 8px black
 }

 .logo {
     width: 80px;
     margin: auto
 }

 .logo img {
     width: 100%;
     height: 80px;
     object-fit: cover;
     border-radius: 50%;
     box-shadow: 0px 0px 3px , 0px 0px 0px 5px black, 8px 8px 15px #a7aaa7, -8px -8px 15px #fff
 }

 .wrapper .name {
     font-weight: 600;
     font-size: 1.4rem;
     letter-spacing: 1.3px;
     padding-left: 10px;
     color:black
 }

 .wrapper .form-field input {
     width: 100%;
     display: block;
     border: none;
     outline: none;
     background: none;
     font-size: 1.2rem;
     color:black;
     padding: 10px 15px 10px 10px
 }

 .wrapper .form-field {
     padding-left: 10px;
     margin-bottom: 20px;
     border-radius: 20px;
     box-shadow: inset 8px 8px 8px#E0FFFF, inset -8px -8px 8px #2B547E
 }

 .wrapper .form-field .fas {
     color:black
 }

 .wrapper .btn {
     box-shadow: none;
     width: 100%;
     height: 40px;
     background-color:#4863A0;
     color: black;
     border-radius: 25px;
     box-shadow: 3px 3px 3px black, -3px -3px 3px #fff;
     letter-spacing: 1.3px
 }

 .wrapper .btn:hover {
     background-color:#ADDFFF
 }

 .wrapper a {
     text-decoration: none;
     font-size: 0.8rem;
     color: black
 }

 .wrapper a:hover {
     color: black
 }

 @media(max-width: 380px) {
     .wrapper {
         margin: 30px 20px;
         padding: 40px 15px 15px 15px
     }
 }
 
</style>
</head>
<body>
	<div class="wrapper">
	
	
	<form action="insert" method="post">
	<div class="logo"><img src=https://images-platform.99static.com//KJsZFchn_x9n45gIuhPPAC_WU8s=/0x0:1500x1500/fit-in/500x500/99designs-contests-attachments/123/123112/attachment_123112877 alt=""> </div><br>
                     <div align = "center"><div class="text-center mt-4 name">Insert Customer Details</div></div> <br>
                     
        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>            
	    <input type="text" name="NIC" placeholder ="NIC"></div>
	    
	    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
	    <input type="text" name="name" placeholder = "Customer Name"></div>
	    
	    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
	    <input type="text" name="accountnumber" placeholder = "Account Number"></div>
	    
	    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		<input type="text" name="phone" placeholder = "Phone Number"></div>
		
		<div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		<input type="text" name="email" placeholder = "Email"></div>
		
		<div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		<input type="text" name="uid" placeholder = "Username"></div>
		
		<div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		<input type="password" name="psw" placeholder = "Password"></div>
		<br><br>
	<div align = "center">
    <button class = "btn mt-3">Create Account</button></div>
		
		
</form>
</div>
</body>
</html>