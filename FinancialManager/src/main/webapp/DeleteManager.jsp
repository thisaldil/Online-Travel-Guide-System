<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delelte Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image:url('delete.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            max-width: 400px;
            background-color: transparent;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form h1 {
            text-align: center;
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border-radius: 5px 5px 0 0;
        }

        form input[type="text"] {
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
            background-color: #ff0000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 0 0 5px 5px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #cc0000;
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
	
	<form action="delete" method="post">
	<h1>DELETE MY ACCOUNT</h1>
		Financial Manager ID<input type="text" name="Fid" value="<%= id %>"readonly><br>
		Name				<input type="text" name="Fname" value="<%= name %>"readonly><br>
		Email				<input type="text" name="Femail" value="<%= email %>"readonly><br>
		User name			<input type="text" name="Fusername" value="<%= username %>"readonly><br>
		
		<input type = "submit" name = "submit" value="Delete My Account "><br> 
	</form>

</body>
</html>