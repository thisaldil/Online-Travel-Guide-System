<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage payments</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image:url('delete.jpg');
            background-size: cover;
            text-align: center;
            opacity:0.9;
        }

        .payment-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .payment-item {
            margin: 10px 0;
        }

        .payment-text {
            font-weight: bold;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
        }

        .accept-button, .reject-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin: 0 10px;
        }

        .accept-button:hover, .reject-button:hover {
            background-color: #0056b3;
        }
        /* Add these styles to your existing CSS */
.back-button {
    display: block;
    margin-top: 20px; /* Adjust the margin as needed */
    text-decoration: none;
    background-color: #007fff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    text-align: center;
}

.back-button:hover {
    background-color: green;
}
        
    </style>
</head>
<body>
	
    <div class="payment-container">
    <h1>Remaining Payments </h1>
        <div class="payment-item">
            <p class="payment-text">Tour Guide: Sarah Smit<br>
									Selected Package: "Nature Adventure Trek"<br>
									Offers & Discounts: Early bird discount of $20<br>
									Total Bill: $210</p>
            <div class="action-buttons">
                <button class="accept-button">Accept</button>
                <button class="reject-button">Reject</button>
            </div>
        </div>

        <div class="payment-item">
            <p class="payment-text">Tour Guide: Emily White<br>
									Selected Package: "Food and Culinary Tour"<br>
									Offers & Discounts: None<br>
									Total Bill: $120</p>
            <div class="action-buttons">
                <button class="accept-button">Accept</button>
                <button class="reject-button">Reject</button>
            </div>
        </div>

        <div class="payment-item">
            <p class="payment-text">Tour Guide: Michael Johnson<br>
									Selected Package: "Cultural Heritage Experience"<br>
									Offers & Discounts: Family package discount applied<br>
									Total Bill: $350</p>
            <div class="action-buttons">
                <button class="accept-button">Accept</button>
                <button class="reject-button">Reject</button>
            </div>
        </div>

        <div class="payment-item">
            <p class="payment-text">Tour Guide: John Doe<br>
									Selected Package: "Historical City Tour"<br>
									Offers & Discounts: 10% off on weekday tours<br>
									Total Bill: $180</p>
            <div class="action-buttons">
                <button class="accept-button">Accept</button>
                <button class="reject-button">Reject</button>
            </div>
        </div>

    
    </div>
    <a href="#" class="back-button">Done</a>
    
<script>
    // Function to handle the click event for Accept button
    function handleAcceptButtonClick(button) {
        var parentDiv = button.closest(".payment-item");
        var acceptButton = parentDiv.querySelector(".accept-button");
        var rejectButton = parentDiv.querySelector(".reject-button");

        // Disable the Reject button and change styles
        rejectButton.disabled = true;
        rejectButton.style.backgroundColor = "#ccc";

        // Enable the Accept button and change styles
        acceptButton.disabled = false;
        acceptButton.style.backgroundColor = "green";
    }

    // Function to handle the click event for Reject button
    function handleRejectButtonClick(button) {
        var parentDiv = button.closest(".payment-item");
        var acceptButton = parentDiv.querySelector(".accept-button");
        var rejectButton = parentDiv.querySelector(".reject-button");

        // Disable the Accept button and change styles
        acceptButton.disabled = true;
        acceptButton.style.backgroundColor = "#ccc";

        // Enable the Reject button and change styles
        rejectButton.disabled = false;
        rejectButton.style.backgroundColor = "red";
    }

    // Get all the Accept and Reject buttons
    var acceptButtons = document.querySelectorAll(".accept-button");
    var rejectButtons = document.querySelectorAll(".reject-button");

    // Add click event listeners to each button
    acceptButtons.forEach(function(button) {
        button.addEventListener("click", function() {
            handleAcceptButtonClick(button);
        });
    });

    rejectButtons.forEach(function(button) {
        button.addEventListener("click", function() {
            handleRejectButtonClick(button);
        });
    });
    
</script>

</body>
</html>