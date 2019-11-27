<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Flights Details</title>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  background-image: url('https://www.ishn.com/ext/resources/900x550/airplane-plane-flight-900.jpg?height=635&t=1569333144&width=1200');
}


* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=number] {
  width: 20%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */


/* Set a style for the submit button */
.button {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.button:hover {
  opacity: 1;
}

/* Add a blue text color to links */


/* Set a grey background color and center the text of the "sign in" section */

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}

</style>
</head>
<body >


<form action="deleteprocess" method="get">
<h2>Select the flight id which you want to delete</h2>
<div>  FlightId </div>

   <input type="text" name="flightId" required />


   </div>

<div>
    <button type="submit" value="Delete Flight">Delete</button>
</div>
</form>

			
			
			
			
</body>
</html>