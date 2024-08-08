 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <h1>USER ACCOUNT</h1>
<meta charset="ISO-8859-1">
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: url('update.jpg');
    background-size: cover;
     
	background-position: center;
    background-color: #f0f0f0;
    text-align: center;
    margin: 0;
    padding: 0;
  }

  table {
  	
    margin: 20px auto;
    background-color: white;
    opacity:0.9;
    border-collapse: collapse;
    position:sticky-right;
    width: 40%;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
    border-radius:30px;
  }

  table th, table td {
    padding: 10px;
    border: 1px ;
  }

  a {
    text-decoration: none;
    display: inline-block;
    margin: 10px;
    padding: 10px 20px;
    background-color: #007BFF;
   
    border: none;
    border-radius: 13px;
    cursor: pointer;
    text-align: center;
  }

  a:hover {
    background-color: #0056b3;
  }
  .sidebar {
    position:fixed ;
    left: 0;
    top: 120px;
    width: 260px;
    background-color: transparent;
    padding-top: 16px;
    
  }

  .sidebar a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
  	background-color:transparent;
    display: block;
    border-radius:50px;
     box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
  }

  .sidebar a:hover {
   
  }
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.6);
  max-width: 350px;
  max-height:500px;
  margin: auto;
  text-align: center;
  background-color: transparent;
  border-radius:30px;
}

.title {
  color: grey;
  font-size: 18px;
}



a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
}
</style>
<title>User Account</title>
</head>
<body>


	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="card">
  <img src="me1.jpg" alt="John" style="width:35%;height:35%">
  <h1><c:forEach var="Fman" items="${FDetails}">
   						${Fman.name}</c:forEach></h1>
  <p class="title">Financial Manager & Founder</p>
  <p>SLIIT University</p>
  <a href="#"><i class="fa fa-dribbble"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <a href="#"><i class="fa fa-facebook"></i></a>
  
</div>
	<table>
		<c:forEach var="Fman" items="${FDetails}">
		
		<c:set var="id" value="${Fman.id}"/>
		<c:set var="name" value="${Fman.name}"/>
		<c:set var="email" value="${Fman.email}"/>
		<c:set var="username" value="${Fman.username}"/>
		<c:set var="password" value="${Fman.password}"/>
		
	<tr>	
		<td>User ID</td>
		<td>${Fman.id}</td>
	</tr>
	
	<tr>
		<td>Registered Name</td>	
		<td>${Fman.name}</td>
	</tr>	
	
	<tr>
		<td>Work Email</td> 
		<td>${Fman.email}</td>
	</tr>
	
	<tr>	
		<td>Manager User name</td>
		<td>${Fman.username}</td>
	</tr>	
		
	<!--  <tr>
		<td>Financial Manager Password</td>
		<td>${Fman.password}</td> 
	</tr>*/-->	
		</c:forEach>
	</table>
	
	
	<c:url value="UpdateManager.jsp" var="managerupdate">
		<c:param name="id" value="${id}"/> 
		<c:param name="name" value="${name}"/> 
		<c:param name="email" value="${email}"/> 
		<c:param name="uname" value="${username}"/> 
		<c:param name="pass" value="${password}"/> 
	</c:url>
	
	
	
	
	<c:url value = "DeleteManager.jsp" var="FDelete">
		<c:param name="id" value="${id}"/> 
		<c:param name="name" value="${name}"/> 
		<c:param name="email" value="${email}"/> 
		<c:param name="uname" value="${username}"/> 
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<div class="sidebar"> 
	<a class="active" href="#home">Home</a><br><br> 	
	<a href="managepayments.jsp">
	<input type ="button" name="validate" >Payments profile
	</a><br>
	<a href="FinancialManagerInsert.jsp">
	<input type="button" name="register" >Manager Enrollment
	</a><br>
	<a href="${managerupdate}">
	<input type ="button" name="update" >Profile Update
	</a><br>
	<a href="${FDelete}">
	<input type="button" name="delete" >Delete Account
	</a>
	<br>
	<a href="Login.jsp">
	<input type="button" name="logout" >Log Out
	</a>
	</div>
	
	
	
</body>
</html>