<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h1> Choose the Operation you want to Select </h1>
	
	
	<form name="form" meathod = "POST">
	<input type="radio" name="Weather" value="getCountry" id="getCountry"><label for="getCountry">List All Countries</label><br>
	<input type="radio" name="Weather" value="getCity" id="getCity"><label for="getCity">List All Cities of a Country</label><br>
	<input type="radio" name="Weather" value="getWeatherDetails" id="getWeatherDetails"><label for="getWeatherDetails">Get Weather Details of a City</label><br>
	<input type="radio" name="Weather" value="insertWeatherDetails" id="insertWeatherDetails"><label for="insertWeatherDetails">Add a new Weather Details of a City</label><br>
	<br>
	<input type="submit" name="submit" value="submit"></input>
	</form>
<%

if(request.getParameter("Weather") != null) 
{   
  	switch(request.getParameter("Weather"))
  	{
  	
  	 	case "getCountry" : response.sendRedirect("listCountry.jsp");break;
  	 	case "getCity" : response.sendRedirect("listCity.jsp");break;
  	 	case "getWeatherDetails" : response.sendRedirect("getWeatherDetails.jsp");break;
  	 	case "insertWeatherDetails" : response.sendRedirect("insertWeatherDetails.jsp");break;
  	}
	
	
	
}

%>	




</body>
</html>