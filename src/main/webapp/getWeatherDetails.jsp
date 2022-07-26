<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import = "com.app.weather.*" %>  
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weather Details</title>
</head>
<body>
<h1>Select the Country</h1>
<form action = "getWeatherDetails.jsp">
<select name = "Countries">	
<option value="" selected disabled hidden>Choose here</option>
<%
WeatherService obj1 = new WeatherServiceLocator();
WeatherInterface obj2 = obj1.getWeatherPort();
int count = obj2.getCountryWSDL().length;

for(int i =0;i<count;i++)
{
	String[] SplitCountry = obj2.getCountryWSDL()[i].split(";");
%>
<option value="<%=SplitCountry[1]%>"><%=SplitCountry[0] %></option>

<%}%>

</select>

<h3> Select the Country of which Country you want to list the cities</h3>


    <input type="submit" name="Submit" value="Submit"/>
    <input type="Submit" name="Home" value="Home"></input>
    <br>


<%
if(request.getParameter("Submit") != null) 
 {
	%>
	<h3> Select the City of which you want to find the Weather details</h3>       
    <select name = "Cities">
    <option value="" selected disabled hidden>Choose here</option>
	<% 
   String CountryCode = request.getParameter("Countries");
   int count2 = obj2.getCityWSDL(CountryCode).length;
   %>
    <br><br>
   <%
	for(int i =0;i<count2;i++)
	{
    	String[] SplitCity = obj2.getCityWSDL(CountryCode)[i].split(";");
		
		%>
		<option  value="<%=SplitCity[1]%>"><%=SplitCity[0] %></option>		
	  
	<%}%>
</select>
	<br><br>
	<input type="submit" name="Submit1" value="Submit"/>
    <input type="Submit" name="Home" value="Home"></input>
    <br>
 </form>   
	<% 
   }
if(request.getParameter("Submit1") != null) 
{
	%>
	<h4>Weather Details</h4>	
	<% 
	
	String CityCode= request.getParameter("Cities");

	int count3 = obj2.getWeatherDetails(CityCode).length;
	
	for(int i =0;i<count3;i++)
	{

		String[] SplitWeather = obj2.getWeatherDetails(CityCode)[i].split(";");
	%>
	   <h5>Temperature</h5> <% out.println(SplitWeather[1] + "°C on Date " + SplitWeather[0]); %>

		<% 
	}
}
if(request.getParameter("Home") != null) 
  {
	response.sendRedirect("index.jsp");
  }
%>

</body>
</html>