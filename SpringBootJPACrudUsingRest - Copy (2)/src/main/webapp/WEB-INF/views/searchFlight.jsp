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
 border: 3px solid #f1f1f1;
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
  background-image: url("https://o.aolcdn.com/images/dims3/GLOB/legacy_thumbnail/1028x675/format/jpg/quality/85/https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-images%2F2018-10%2F2d894970-d769-11e8-9eeb-cf6b09ccaf8f");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
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
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 60%;
  padding: 20px;
  text-align: center;
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



@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }

  
  
}
.alert{
color: blue;
}
</style>
</head>
<body>

<div class="bg-image"></div>


  <form action="searchflightprocess" method="post" class="bg-text">
		<table style="with: 50%" align="center" >
		
		<h3  class="alert"><b>Successfully logged in!!</b></h3>
		<h4>Now you can select your flight details!!:)</h4>
		
 
                    
               
			<tr>
				<td>Source: </td>
				<td><input type="text" name="source"  placeholder="eg.Mumbai" required/></td>
			</tr>
				<tr>
				<td>Destination: </td>
				<td><input type="text" name="destination" placeholder="eg.Delhi" required/></td>
			</tr>
			<tr>
				<td>Date: </td>
				<td><input type="text" name="dept_date"  required/></td>
			</tr>
		</table>
		<button type="submit" value="Search" onclick="selectFlight" align="center" > Search </button>
		
	
	
</body>
</html>
	</form>


</body>
</html>
