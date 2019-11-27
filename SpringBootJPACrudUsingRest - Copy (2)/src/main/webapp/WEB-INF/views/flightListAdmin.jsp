<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
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


</style>
<meta charset="ISO-8859-1">
<title>List of flights</title>
</head>
<body>

<form action="flightListAdmin" method="get">
<h2 align="center"> List of flights:</h2>
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
	<c:forEach items="${flight}" var="f">
		<tr>
			<td align="center">${f.flightId}</td>
			<td align="center">${f.flightNo}</td>
			<td align="center">${f.source}</td>
			<td align="center">${f.destination }</td>
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

	
</form>






</body>
</html>