<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
form {
width: 530px; 

  text-align: center;
 }


* {
  box-sizing: border-box;
}

input[type=text], input[type=password], input[type=email],input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 30px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
   
}

.bg-image {
  /* The image used */
  background-image: url("https://www.cdkglobal.com/sites/default/files/styles/tab_message_style/public/product%20images/cdk_image_in_banner_auto_computerized_vehicle_registration.jpg?itok=e8ORliSv");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 200%; 
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 90%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 60%;
  padding: 140px;
  text-align: center;
  height: 40;
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



@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }

  
  
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

</style>
</head>
<body>



<div class="bg-image"></div>

<div class="bg-text" align="center">

<h1 align="center">Register Form</h1>

	<form action="createprocess" method="post" modelAttribute="user" align="center">
		<table  align="center">
		<div class="imgcontainer">
    <img src="https://static.thenounproject.com/png/17241-200.png" alt="Avatar" class="avatar">
  </div>

			<tr>
				<td>First Name:</td>
				<td><input type="text" name="first_name" required /></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="last_name" required /></td>
			</tr>

			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" required /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" minlength="8"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					required /></td>
			</tr>
			<tr>
				<td>Date of Birth:</td>
				<td><input type="date" name="dob" id="start" value="yyyy-mm-dd"
					min="1950-01-01" max="2050-12-31" required /></td>
			</tr>
			<tr>
				<td>Contact No:</td>
				<td><input type="text" name="phno" id="phone" required /></td>
			</tr>
		</table>

		<button type="submit" value="Submit" align="center">Register</button>
	</form>
	<form action="login" method="post">
		<button type="submit" value="Login" align="center">Already registered?</button>
		</form>
		</div>
		</body>
</html>