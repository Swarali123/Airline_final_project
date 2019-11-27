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
  background-image: url('https://images.all-free-download.com/images/graphiclarge/abstract_aeroplane_air_airplane_background_cloud_599742.jpg');
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
  width: 100%;
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


<form action="enterFlightsdetails" method="post"  class="center" >
<div class="container">
<h1 align="center">Flight Details </h1>
			<table style="with: 50%" class="center">
			<tr>
					<td>Flight Id:</td>
					<td><input type="number" name="flightId" required/></td>
				</tr>
				<tr>
					<td>Flight No.:</td>
					<td><input type="number" name="flightNo" required/></td>
				</tr>
				<tr>
					<td>Source:</td>
					<td><input type="text" name="source" required/></td>
				</tr>
				
				<tr>
					<td>Destination:</td>
					<td><input type="text" name="destination"  required/></td>
				</tr>
				
					<tr>
					<td>Date Of Departure:</td>
					<td><input type="text" name="dept_date"  required/></td>
				</tr>
				<tr>
					<td>Remaining Business Seats:</td>
					<td><input type="number" name="remaining_business_seats" required/></td>
				</tr>
				<tr>
					<td>Remaining Economic Seats:</td>
					<td><input type="number" name="remaining_economic_seats" required/></td>
				</tr>
				<tr>
					<td>Duration:</td>
					<td><input type="number" name="duration" required/></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="number" name="price" required/></td>
				</tr>
				<tr>
					<td>Time Of Departure:</td>
					<td><input type="number" name="dept_time" required/></td>
				</tr>
				<tr>
					<td>Time Of Arrival:</td>
					<td><input type="number" name="arrival_time" required/></td>
				</tr>
				
				
				</table>
			<button type="submit" value="Add" class="center"> Add</button> 
			</div>
			 </form>

			
			
			
			
</body>
</html>