/**
 * WeatherService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.app.weather;

public interface WeatherService extends javax.xml.rpc.Service {
    public java.lang.String getWeatherPortAddress();

    public com.app.weather.WeatherInterface getWeatherPort() throws javax.xml.rpc.ServiceException;

    public com.app.weather.WeatherInterface getWeatherPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
