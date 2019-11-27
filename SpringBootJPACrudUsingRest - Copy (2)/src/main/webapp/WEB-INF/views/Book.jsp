<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
   border: 1px solid black;
}
th {
  background-color: #4CAF50;
  color: white;
  border: 1px solid black;
}
td, th {
  
  text-align: left;
  padding: 8px;
  border: 1px solid black;
}

tr:nth-child(even) {
  background-color: #dddddd;
  border: 1px solid black;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
button {
  background-color: lightblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  border-radius: 12px;
}

button:hover {
  opacity: 0.8;
}

</style>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
</head>
<body>
<form action="" method="post">
	<table>
	<tr>
		<th>Flight ID</th>
		<%-- <th>Price</th>--%>
		<th>Economic_seats</th>
		<th>Business_seats</th>
	</tr>
	
	
	<c:forEach items="${flight}"  >     
		<tr>
			<td align="center">${flight.flightId}</td>
			<%-- <td align="center">${flight.price}</td>--%>
			<td align="center">${flight.remaining_business_seats}</td>
			<td align="center">${flight.remaining_economic_seats}</td>
			
			
			
		</tr>
	</c:forEach>
	

</table>
</form>	


<form action="bookingflightprocess" method="post">
<h3 >Enter your Details to proceed </h3>
<table>
            <tr>
				<td>First Name</td>
				<td><input type="text" name="fname" required /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" required /></td>
			</tr>

			<tr>
				<td>Age</td>
				<td><input type="text" name="age" required /></td>
			</tr>
             <tr>
				<td>Enter Number of Economic Seats</td>
				<td><input type="text" name="no_of_booked_economySeats"/></td>
			</tr>


			<tr>
				<td>Enter Number of Business Seats</td>
				<td><input type="number" name="no_of_booked_businessSeats" /></td>
			</tr>
			
			<tr>
			<td>price</td>      
			<td >${flight.price}</td>
			</tr>
</table>
			

<br>
<button type="submit" value="Book" class="center">Book</button>
	







<%-- ${flight.price} ${flight.remaining_business_seats}
	${flight.remaining_economic_seats} --%>

</form>

</body>
</html>