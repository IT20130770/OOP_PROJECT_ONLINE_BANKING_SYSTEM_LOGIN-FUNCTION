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
     background:url(https://images.unsplash.com/photo-1488998527040-85054a85150e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80)no-repeat;
background-size:1600px;
 }

 .wrapper {
     max-width: 400px;
     min-height: 500px;
     margin: 80px auto;
     padding: 40px 30px 30px 30px;
     background-color: #98AFC7;
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
     box-shadow: inset 8px 8px 8px white, inset -8px -8px 8px #2B547E
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
     background-color:#BDEDFF
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
	    String CustomerName = request.getParameter("CustomerName");
		String AccountNumber = request.getParameter("AccountNumber");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		String UserName = request.getParameter("username");
		String Password = request.getParameter("password");
	%>
	
	
	<form action="update" method="post">
	<div class="logo"><img src=https://images-platform.99static.com//KJsZFchn_x9n45gIuhPPAC_WU8s=/0x0:1500x1500/fit-in/500x500/99designs-contests-attachments/123/123112/attachment_123112877 alt=""> </div><br>
                     <div align = "center"><div class="text-center mt-4 name">Update Customer Details</div></div> <br>
	
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="id" placeholder="ID" value="<%=id%>" readonly></div>
		
		
		    <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="NIC" placeholder="NIC" value="<%=NIC%>"></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="customerName" placeholder="Name" value="<%=CustomerName%>"></div>


            <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
			<input type="text" name="accountNumber" placeholder="Account Number" value="<%=AccountNumber%>"></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
	        <input type="text" name="phoneNumber" placeholder="Phone Number" value="<%=PhoneNumber%>"></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="text" name="email" placeholder="Email" value="<%=Email%>"></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="text" name="username" placeholder="User Name" value="<%=UserName%>"></div>
	
	
	        <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
		    <input type="password" name="password" placeholder="Password" value="<%=Password%>"></div>
	<br><br>
	<div align = "center">
    <button class = "btn mt-3">Update Data</button></div>
	</form>
</div>
</body>
</html>