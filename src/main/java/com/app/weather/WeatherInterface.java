/**
 * WeatherInterface.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.app.weather;

public interface WeatherInterface extends java.rmi.Remote {
    public java.lang.String[] getCountryWSDL() throws java.rmi.RemoteException, com.app.weather.Exception;
    public java.lang.String[] getCityWSDL(java.lang.String arg0) throws java.rmi.RemoteException, com.app.weather.Exception;
    public java.lang.String[] getWeatherDetails(java.lang.String arg0) throws java.rmi.RemoteException, com.app.weather.Exception;
    public java.lang.String[] insertWeatherDetails(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, double arg3) throws java.rmi.RemoteException, com.app.weather.Exception;
}
