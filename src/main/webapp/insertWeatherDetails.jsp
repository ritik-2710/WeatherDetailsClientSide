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


<form>
<h3> Select the Country Code</h3>
<select name = "Countries">	
<option value="" selected disabled hidden>Choose here</option>
<%

int count = obj2.getCountryWSDL().length;
String[] SplitCountry = {};
String CountryCode ="";
for(int i =0;i<count;i++)
{
	//String[] SplitCountry = obj2.getCountryWSDL().get(i).split(";");
	SplitCountry = obj2.getCountryWSDL()[i].split(";");
%>
<option value="<%=SplitCountry[1]%>"><%=SplitCountry[0] %></option>

<%}%>

</select>

    <input type="submit" name="Submit" value="Submit"/>
    <input type="Submit" name="Home" value="Home"></input>
    <br>


<%

if(request.getParameter("Submit") != null) 
 {   
	CountryCode =request.getParameter("Countries"); 
	session.putValue("CountryCode",CountryCode);
	out.println("Country Code : " + CountryCode );
 
	%>
	<h3> Select the City </h3>    
    
    
<select name = "Cities">
<option value="" selected disabled hidden>Choose here</option>
	<% 
    CountryCode = request.getParameter("Countries");
	
   int count2 = obj2.getCityWSDL(CountryCode).length;
   %>
    <br><br>
   <%
    String[] SplitCity = {};
	for(int i =0;i<count2;i++)
	{
    	 SplitCity = obj2.getCityWSDL(CountryCode)[i].split(";");
	
		%>
		<option  value="<%=SplitCity[1]%>"><%=SplitCity[0]%></option>		
	  
	<%}%>
</select>
	<br><br>
	<input type="submit" name="Submit1" value="Submit"/>
    <input type="Submit" name="Home" value="Home"></input>
    <br>
    
	<% 
   }
String CityCode ="";
if(request.getParameter("Submit1") != null) 
{
	%>
	<h4>City Code </h4>
	<% 
	
	out.println("Country Code : " + session.getAttribute("CountryCode") );
	
	CityCode = request.getParameter("Cities") ;
	
	out.println("<br> City Code : " + CityCode );
	session.putValue("CityCode",CityCode);
	
}
if(request.getParameter("Home") != null) 
  {
	response.sendRedirect("index.jsp");
  }
%>

    
     
    <h3> Enter the Date</h3>
    <input type="text" id="Date" name = "Date" />
    <br><br>
    
    <h3> Enter the temperature</h3>
    <input type="text" id="Temperature" name = "Temperature" />
    <br><br>

    <input type="submit" name="Submit5" value="Submit"/>
    <input type="Submit" name="Home1" value="Home"></input>
</form>
<%
if(request.getParameter("Submit5") != null) {
	
	 
	CountryCode = session.getAttribute("CountryCode").toString();
	CityCode = session.getAttribute("CityCode").toString();
	 String Date = request.getParameter("Date");
	double Temperature = Double.parseDouble(request.getParameter("Temperature"));
	
	
	
	
	String[] status = obj2.insertWeatherDetails(CountryCode, CityCode, Date, Temperature);
	
	out.print(status[0]);
	
	
}

if(request.getParameter("Home1") != null) {
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>