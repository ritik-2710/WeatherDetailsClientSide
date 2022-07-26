package com.app.weather;

public class WeatherInterfaceProxy implements com.app.weather.WeatherInterface {
  private String _endpoint = null;
  private com.app.weather.WeatherInterface weatherInterface = null;
  
  public WeatherInterfaceProxy() {
    _initWeatherInterfaceProxy();
  }
  
  public WeatherInterfaceProxy(String endpoint) {
    _endpoint = endpoint;
    _initWeatherInterfaceProxy();
  }
  
  private void _initWeatherInterfaceProxy() {
    try {
      weatherInterface = (new com.app.weather.WeatherServiceLocator()).getWeatherPort();
      if (weatherInterface != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)weatherInterface)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)weatherInterface)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (weatherInterface != null)
      ((javax.xml.rpc.Stub)weatherInterface)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.app.weather.WeatherInterface getWeatherInterface() {
    if (weatherInterface == null)
      _initWeatherInterfaceProxy();
    return weatherInterface;
  }
  
  public java.lang.String[] getCountryWSDL() throws java.rmi.RemoteException, com.app.weather.Exception{
    if (weatherInterface == null)
      _initWeatherInterfaceProxy();
    return weatherInterface.getCountryWSDL();
  }
  
  public java.lang.String[] getCityWSDL(java.lang.String arg0) throws java.rmi.RemoteException, com.app.weather.Exception{
    if (weatherInterface == null)
      _initWeatherInterfaceProxy();
    return weatherInterface.getCityWSDL(arg0);
  }
  
  public java.lang.String[] getWeatherDetails(java.lang.String arg0) throws java.rmi.RemoteException, com.app.weather.Exception{
    if (weatherInterface == null)
      _initWeatherInterfaceProxy();
    return weatherInterface.getWeatherDetails(arg0);
  }
  
  public java.lang.String[] insertWeatherDetails(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, double arg3) throws java.rmi.RemoteException, com.app.weather.Exception{
    if (weatherInterface == null)
      _initWeatherInterfaceProxy();
    return weatherInterface.insertWeatherDetails(arg0, arg1, arg2, arg3);
  }
  
  
}