<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.column img {
  width: 150px;
  border-radius: 50%;
}

.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
</style>
</head>
<body>
<!-- 
<form action="adminviewprocess" method="post">
<a href="flight" value="flight">View Flights </a> -->

<h2 > Welcome admin!!</h2>
<h3 > Select your action...</h3>
<div class="row" >
  <div class="column">
    <img src="https://cdn2.iconfinder.com/data/icons/symbol-duo-transport-1/32/airplane-add-512.png" alt="Add">
    <a href="addflights" >Add Flights </a>
  </div>



  <div class="column">
    <img src="https://cdn0.iconfinder.com/data/icons/airplane-safety/512/xxx046-2-512.png" alt="Delete">
    <a href="delete" >Delete Flights </a>
 
</div>

  <div class="column">
    <img src="data:image/png;base64,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" alt="View">
    <a href="flightListAdmin">View Flights</a>
  </div>
</div>
<!-- </form>
 -->
 

<!-- <form action="adminviewprocess">  </form> -->

<!-- <form action=""> Delete Flight</form> -->



</body>
</html>