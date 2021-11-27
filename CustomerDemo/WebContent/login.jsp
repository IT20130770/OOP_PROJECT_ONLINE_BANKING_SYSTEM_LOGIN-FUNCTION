<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
<style> 
 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: comic sans ms;
 }

 body {
     background:url(https://www.infosysconsultinginsights.com/wp-content/uploads/2020/05/Technology-Risk-1.jpg)no-repeat;
background-size:1600px;
 }
 
         
.btn {
background-color: #342D7E;
color: white;
padding: 12px;
margin: 10px 0;
border: none;
width: 15%;
border-radius: 3px;
cursor: pointer;
font-size: 17px;
}
.btn:hover {
background-color: #737CA1;
}

 .wrapper {
     max-width: 350px;
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
     background-color: #646D7E
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
 
.btn2 button{
width: 180px;
color: white;
font-size: 15px;
padding: 12px 0;
background:linear-gradient(to right,#151B54,#7D1B7E);
border: 2px;
border-radius: 20px;
outline: none;



}
.btn2 button:hover {
transition: transform;
background: linear-gradient(to right, #FFDB58,#C48793);
color:BLACK;
}
</style>
</head>
<body>

<br>
<div align = "left">
<div class ="btn2">
<a href = "home.jsp">
<button type="button" name="back" >Back to home</button>
</a> </div></div>


      <div class="wrapper">
          <form action="login" method="post"> 
               <div class="logo"><img src=https://images-platform.99static.com//KJsZFchn_x9n45gIuhPPAC_WU8s=/0x0:1500x1500/fit-in/500x500/99designs-contests-attachments/123/123112/attachment_123112877 alt=""> </div><br>
                     <div align = "center"><div class="text-center mt-4 name">Customer Login</div></div> <br><br>


           <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>
               <input type="text" name = "username" placeholder="Username"></div>

           <div class="form-field d-flex align-items-center"> <span class="fas fa-key"></span>
               <input type="password" name = "password" placeholder="Password"></div>
<br><br>

           <div align = "center"><button class="btn mt-3">Sign In</button></div></form>
            <div align = "center">
           <a href = "customerinsert.jsp">
           <button class="btn mt-3">Sign Up</button>
  
 </a></div>  
</div>
</body>   
</html>