<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin Form</title>

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
  background-image: url("https://www.boldmethod.com/images/learn-to-fly/aeromedical-factors/spatial-disorientation-vestibular-illusions-and-how-to-prevent-each-one-of-them/small.jpg");
  
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
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
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
  width: 45%;
  padding: 50px;
  
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

<form action="adminviewprocess" method="post" modelAttribute="admin" align="center">
<h1> Admin Login Form</h1>
			<table style="with: 50%" align="center">
			
			<div class="imgcontainer">
    <img src="https://cdn1.iconfinder.com/data/icons/man-user-human-profile-avatar-business-person/100/09-1User_3-4-512.png" alt="Avatar" class="avatar">
  </div>
  

				<tr>
					<td> Name</td>
					<td><input type="text" name="uname" required/></td>
				</tr>
				
				<tr>
					<td> Password</td>
					<td><input type="password" name="password" required/></td>
				</tr></table>
			<button type="submit" value="Submit" > Login </button>
		
			</form>
			</div>
			
			
			
</body>
</html>