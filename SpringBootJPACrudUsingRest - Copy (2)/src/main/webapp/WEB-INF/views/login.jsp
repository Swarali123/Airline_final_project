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

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 30px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
   
}

.bg-image {
  /* The image used */
  background-image: url("https://airqualitynews.com/wp-content/uploads/2019/03/airplane-travel-sky-travel-vacation-b0112e-1024-1024x768.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 150%; 
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
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 60%;
  padding: 140px;
  
  text-align: center;
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
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}

</style>
</head>
<body>



<div class="bg-image"></div>

<div class="bg-text" class="center" >

<form action="createLogin" method="post" align="center">
 <h1 align="center">User login</h1>
 <div class="imgcontainer"  align="center">
    <img src="https://static.thenounproject.com/png/17241-200.png" alt="Avatar" class="avatar">
  </div>
		<table style="with: 50%" align="center">
		

			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" required/></td>
			</tr>
				<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required/></td>
			</tr>
		</table>
		<button type="submit" value="Login" onclick="searchFlight" align="center"> Login </button>
		</form>
	
	
		
		<form action="createuser" method="post"  >
		 <h4  align="center"> New user? </h4>
		<button type="submit" value="Register here" align="center"> Register here </button>
		</form>
		</div>
		</body>
</html>