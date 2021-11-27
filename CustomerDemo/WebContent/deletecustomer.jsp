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
     background:url(https://salfordcab.org.uk/wp-content/uploads/2019/12/credit-card.jpg)no-repeat;
background-size:1800px;
 }

 .wrapper {
     max-width: 400px;
     min-height: 500px;
     margin: 80px auto;
     padding: 40px 30px 30px 30px;
     background-color: #6D7B8D;
     border-radius: 15px;
     box-shadow: 5px 5px 10px #cbced1, -5px -5px 10px black
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
     box-shadow: inset 8px 8px 8px #82CAFA, inset -8px -8px 8px #2B547E
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
     background-color: #BDEDFF
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
	<%
	String id = request.getParameter("id");
    String NIC = request.getParameter("NIC");
    String customername = request.getParameter("CustomerName");
	String accountnumber = request.getParameter("accountnumber");
	String phonenumber = request.getParameter("phone");
	String email = request.getParameter("email");
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");
	%>

	
	
	<form action="delete" method="post">
	<div class="logo"><img src=https://images-platform.99static.com//KJsZFchn_x9n45gIuhPPAC_WU8s=/0x0:1500x1500/fit-in/500x500/99designs-contests-attachments/123/123112/attachment_123112877 alt=""> </div><br>
                     <div align = "center"><div class="text-center mt-4 name">Delete Customer Details</div></div> <br>
	
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="cusid" value="<%= id %>" readonly></div>
		
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="NIC" value="<%= NIC %>" readonly></div>
		
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name=" customername" value="<%=  customername %>" readonly></div>
		
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="accountnumber" value="<%= accountnumber %>" readonly></div>
		
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="text" name="phonenumber" value="<%= phonenumber %>" readonly></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="text" name="email" value="<%= email %>" readonly></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="text" name="uname" value="<%= userName %>" readonly></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
	        <input type="password" name="pass" value="<%= password %>" readonly></div>
	
	
	<br><br>
	<div align = "center">
    <button class = "btn mt-3">Delete Data</button></div>
	</form>
</div>
</body>
</html>