<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
  body {
  	font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    background-image: url('wallpaper.jpg');
    background-size: cover;
	background-position: center;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin-left: 10;
  }
  
  form {
    background-color:  rgba(255, 255, 255, 0.7);
    font-size:20px;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    width: 400px;
    opacity: 0.9;
    
  }
  
  h1, h4 {
    
    display: block;
     color: #077BFF; 
    font-family: Comic Sans;
  }

  h1 {
    color: #333;
  }

  input[type="text"], input[type="password"] {
    width: 80%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }

  input[type="text"]::placeholder, input[type="password"]::placeholder {
    color: #ccc;
  }
</style>

<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div >
	<h1 style="display: block;" >Adminstrator Login       &nbsp;&nbsp; </h1><br>
	<h4 style="display: block;">The art of finance is to make the impossible seem easy, &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
	 <h4>and the challenging look routine                  </h4>
	 <br>
	<p style="display: block;">"Tour guides are the bridge between travelers and the world's wonders,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
	<p>  opening doors to new experiences and memories.                  </p>

	</div>
	
	<form action="log" method="post">
	<h1>FINANCIAL MANAGER</h1>
	<br><br>
	
	User name <input type="text" name="username" placeholder="enter your username"> <br>

	
	
	Password <input type="password" name="passwrd" placeholder="enter your password"><br><br>
	
	

	<input type="submit" name ="submit" value="login">
<p style="display: block;">Don't have an account? <a href="FinancialManagerInsert.jsp">Sign up</a></p>
	 
	 </form>  
	  

</body>
</html>

