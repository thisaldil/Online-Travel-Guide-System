<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
  <style>
  
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image:url('update2.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            max-width: 400px;
            background-color:transparent;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        form input[type="text"],
        form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        form input[type="text"][readonly] {
            background-color: #f0f0f0;
        }

        form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String username = request.getParameter("uname");
	    String password = request.getParameter("pass");
	
	%>

	<form action="update" method="post">
	<h1>Update Profile Details</h1>
		Financial Manager ID<input type="text" name="Fid" value="<%= id %>"readonly><br>
		Name				<input type="text" name="Fname" value="<%= name %>"><br>
		Email				<input type="text" name="Femail" value="<%= email %>"><br>
		User name			<input type="text" name="Fusername" value="<%= username %>"><br>
		Password			<input type="password" name="Fpassword" value="<%= password %>"><br>
		
		<input type = "submit" name = "submit" value="Update My Data "><br> 
	</form>

</body>
</html>