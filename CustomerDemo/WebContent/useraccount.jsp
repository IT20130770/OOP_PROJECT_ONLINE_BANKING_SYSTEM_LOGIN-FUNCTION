<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style type="text/css">

body {
font-family:comic sans ms;
color: black;
font-size: 20px;
background:url(https://www.dentons.com/-/media/images/website/background-images/practices/banking-and-finance/banking_5.jpg)no-repeat;
background-size:1600px;
}

input[type=text] {
width: 30%;
margin-bottom: 20px;
padding: 12px;
border: 1px solid #ccc;
border-radius: 5px;
}

img {
border-radius: 50%;
}
.btn1{
    align-items: center;
    padding-left: 44%;
    margin-bottom: auto;
}
.btn1 button{
    width: 180px;
    color: white;
    font-size: 15px;
    padding: 12px 0;
    background:linear-gradient(to right, #000080,#D2B9D3);
    border: 2px;
    border-radius: 20px;
    outline: none;
 
}
.btn1 button:hover {
    transition: transform;
    background: linear-gradient(to right, #C3FDB8,#FBF6D9);
    color:black;
}  
.btn2{
align-items: center;
margin-bottom: auto;
}

.btn2 button{
width: 180px;
color: white;
font-size: 15px;
padding: 12px 0;
background:linear-gradient(to right,#151B54,#7D0552);
border: 2px;
border-radius: 20px;
outline: none;



}
.btn2 button:hover {
transition: transform;
background: linear-gradient(to right,#7F525D,#ECC5C0);
color:BLACK;
}

</style>
</head>
<body>

<div align = "right">
      <div class ="btn1">
           <a href = "customerinsert.jsp">

                 <button type="button" name="insert" >Create New Account</button>
           </a> </div></div>

		<div class = "content"></div>
		
		<font color = "black"></font>
	
		
<div align = "center">

<h1><U>Customer Profile</U></h1>
<br>

<table>

	<c:forEach var="dns" items="${cusDetails}">
	
	<c:set var="id" value="${dns.id}"/>
	<c:set var="NIC" value="${dns.NIC}"/>
	<c:set var="CustomerName" value="${dns.customerName }"/>
	<c:set var="AccountNumber" value="${dns.accountNumber }"/>
	<c:set var="PhoneNumber" value="${dns.phoneNumber}"/>
	<c:set var="Email" value="${dns.email}"/>
	<c:set var="username" value="${dns.userName}"/>
	<c:set var="password" value="${dns.password}"/>
	

	<tr>
		<td>Customer ID &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${dns.id}</td>
	</tr>
	
    <tr>
		<td>Customer NIC &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${dns.NIC}</td>
	</tr>
	
	
	              <tr>
	               	<td>Customer Name &nbsp;&nbsp;&nbsp;&nbsp;</td>
		            <td>${dns.customerName}</td>
	              </tr>
	              
	              <tr>
	               	<td>Customer Account Number &nbsp;&nbsp;&nbsp;&nbsp;</td>
		            <td>${dns.accountNumber}</td>
	              </tr>
	
	
	  <tr>
	     <td>Customer Phone Number &nbsp;&nbsp;&nbsp;&nbsp;</td>
		 <td>${dns.phoneNumber}</td>
	  </tr>
	
	               <tr>
		              <td>Customer Email &nbsp;&nbsp;&nbsp;&nbsp;</td>
		              <td>${dns.email}</td>
	               </tr>
	
	<tr>
		<td>Customer UserName &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${dns.userName}</td>
	</tr>

                  <tr>
		             <td>Customer Password &nbsp;&nbsp;&nbsp;&nbsp;</td>
		             <td>${dns.password}</td>
	             </tr>

	</c:forEach>
</table>
	


	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="NIC" value="${NIC}"/>
		<c:param name="CustomerName" value="${CustomerName}"/>
		<c:param name="AccountNumber" value="${AccountNumber}"/>
		<c:param name="PhoneNumber" value="${PhoneNumber}"/>
		<c:param name="Email" value="${Email}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<br>
	
	<a href="${cusupdate}">
	
	<div class ="btn2">

<button type="button" name="update" >Update My Data</button>
</a> </div>
<br>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="NIC" value="${NIC}"/>
		<c:param name="CustomerName" value="${CustomerName}" />
		<c:param name="accountnumber" value="${AccountNumber}"/>
		<c:param name="phone" value="${PhoneNumber}"/>
		<c:param name="email" value="${Email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<a href="${cusdelete}">
	
	<div class ="btn2">

<button type="button" name="delete" >Delete My Account</button>
</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<a href= "login.jsp">
	<button type="button" name="submit" >Log Out</button>
</a> </div>
	
</div>	   
</body>
</html>