<%@page import="com.app.weather.WeatherInterface"%>
<%@page import="com.app.weather.WeatherServiceLocator"%>
<%@page import="com.app.weather.WeatherService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "com.app.*" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Country</title>
</head>
<body>
<h1>Countries</h1>
<form>
<select name = "Country">	
<option value="" selected disabled hidden>Choose here</option>
<%

WeatherService obj1 = new WeatherServiceLocator();
WeatherInterface obj2 = obj1.getWeatherPort();

int count = obj2.getCountryWSDL().length;
 //int count = 5;

for(int i =0;i<count;i++)
{
	//String[] SplitCountry = obj2.getCountryWSDL().get(i).split(";");
	String[] SplitCountry = obj2.getCountryWSDL()[i].split(";");
	
%>
<option value="<%=SplitCountry[1]%>"><%=SplitCountry[0] %></option>
<%}

%>

</select>
<br>
<br>
<input type="Submit" name="Submit" value="Submit"></input>
<input type="Submit" name="Home" value="Home"></input></form>

<%
if(request.getParameter("Submit") != null) {
%>
<h4>Country Code </h4>
<%
	out.println(request.getParameter("Country"));
}
if(request.getParameter("Home") != null) {
	response.sendRedirect("index.jsp");
}
%>


</body>
</html>