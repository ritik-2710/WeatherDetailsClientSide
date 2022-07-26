<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import = "com.app.weather.WeatherInterface" %>  
  <%@ page import = "com.app.weather.WeatherService" %>  
<%@ page import = "com.app.weather.WeatherServiceLocator" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Weather Details</title>
</head>
<body>
<%

		WeatherService obj1 = new WeatherServiceLocator();
		WeatherInterface obj2= obj1.getWeatherPort();
%>

<form >
	<h3> Enter the Country Code</h3>
    <input type="text" id="CountryCode" name = "CountryCode" />
    <br><br>
    
    <h3> Enter the City Code</h3>
    <input type="text" id="CityCode" name = "CityCode" />
    <br><br>
    
    <h3> Enter the Date</h3>
    <input type="text" id="Date" name = "Date" />
    <br><br>
    
    <h3> Enter the temperature</h3>
    <input type="text" id="Temperature" name = "Temperature" />
    <br><br>

    <input type="submit" name="Submit" value="Submit"/>
    <input type="Submit" name="Home" value="Home"></input>
</form>
<%
if(request.getParameter("Submit") != null) {
	String CountryCode = request.getParameter("CountryCode");
	String CityCode = request.getParameter("CityCode");
	String Date = request.getParameter("Date");
	double Temperature = Double.parseDouble(request.getParameter("Temperature"));
	
	String[] status = obj2.insertWeatherDetails(CountryCode, CityCode, Date, Temperature);
    out.print(status[0]);
	
}

if(request.getParameter("Home") != null) {
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>