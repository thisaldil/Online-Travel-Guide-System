<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Registration</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image: url('register.jpg');
		    background-size: cover;
        }

        h2 {
            text-align: center;
            background-color: #007bff;
            color: #fff;
            padding: 10px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
            opacity:0.9;
        }

        form input[type="text"],
        form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        form input[type="radio"] {
            margin: 5px 10px 5px 0;
        }

        form input[type="checkbox"] {
            margin: 5px 10px 5px 0;
        }

        form p {
            font-style: italic;
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
	<h2>Congratulations, you have been chosen or appointed as a manager.</h2>
	<form action="insert"method="post">
		Name<input type="text" name="name"><br>
		Email<input type="text" name="email"><br>
		User  name<input type="text" name="username"><br>
		Password<input type="text" name="password"><br>
		 Re-enter Password<input type="password" name="repassword"><br> <!-- Add Re-enter Password field -->
    Gender:
    <input type="radio" name="gender" value="male">Male
    <input type="radio" name="gender" value="female">Female
    <input type="radio" name="gender" value="other">Other
    <br><br>
     <input type="checkbox" name="acknowledgment" value="yes"> I confirm that I have provided the necessary documents .<br> 
     <input type="checkbox" name="acknowledgment" value="yes"> The acknowledgment letter has been submitted.<br>
     <p>"Only administrators and financial managers have the authority to appoint new managers.</p> 
		
		<input type="submit" name="submit" value="Register New Manager">
	
	</form>
	 <div id="notification" style="display: none; background-color: #4CAF50; color: white; padding: 10px; text-align: center;">
        Registration successful. You can now login.
    </div>
	
 <script>
        function showNotification() {
            // Show the notification message
            var notification = document.getElementById('notification');
            notification.style.display = 'block';

            // Prevent the form from submitting (until the user closes the notification)
            return false;
        }
    </script>
	
	
</body>
</html>