<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
button {
  background-color: lightblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 15%;
}

button:hover {
  opacity: 0.8;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Book" >


	<table>
	<tr>
		<th>Flight ID</th>
		<th>Flight Number</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Departure Date</th>
		<th>Departure Time</th>
		<th>Arrival Time</th>
		<th>Duration</th>
		<th>price</th>
		<th>Remaining business seats</th>
		<th>Remaining economic seats</th>
		
		
	</tr>
	<c:forEach var="f" items="${flightss}">
		<tr>
			<td align="center">${f.flightId}</td>
			<td align="center">${f.flightNo}</td>
			<td align="center">${f.source}</td>
			<td align>${f.destination }</td>
			<td align="center">${f.dept_date}</td>
			<td align="center">${f.dept_time}</td>
			<td align="center">${f.arrival_time}</td>
			<td align="center">${f.duration}</td>
			<td align="center">${f.price}</td>
			<td align="center">${f.remaining_business_seats}</td>
			<td align="center">${f.remaining_economic_seats}</td>
		</tr>
	</c:forEach>
	

</table>	
<br/>
</form>

	<form action="selectflightprocess" method="post" > 
		<table>
			Enter Your Desired FlightID:
			<input type="text" name="flightid"><br/>
			<button type="submit" value="Enter" align="center">Enter</button>
		</table>
	</form>


</body>
</html>