/**
 * WeatherServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.app.weather;

public class WeatherServiceLocator extends org.apache.axis.client.Service implements com.app.weather.WeatherService {

    public WeatherServiceLocator() {
    }


    public WeatherServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public WeatherServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for WeatherPort
    private java.lang.String WeatherPort_address = "http://localhost:9082/WeatherDetails/WeatherService";

    public java.lang.String getWeatherPortAddress() {
        return WeatherPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String WeatherPortWSDDServiceName = "WeatherPort";

    public java.lang.String getWeatherPortWSDDServiceName() {
        return WeatherPortWSDDServiceName;
    }

    public void setWeatherPortWSDDServiceName(java.lang.String name) {
        WeatherPortWSDDServiceName = name;
    }

    public com.app.weather.WeatherInterface getWeatherPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(WeatherPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getWeatherPort(endpoint);
    }

    public com.app.weather.WeatherInterface getWeatherPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.app.weather.WeatherPortBindingStub _stub = new com.app.weather.WeatherPortBindingStub(portAddress, this);
            _stub.setPortName(getWeatherPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setWeatherPortEndpointAddress(java.lang.String address) {
        WeatherPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.app.weather.WeatherInterface.class.isAssignableFrom(serviceEndpointInterface)) {
                com.app.weather.WeatherPortBindingStub _stub = new com.app.weather.WeatherPortBindingStub(new java.net.URL(WeatherPort_address), this);
                _stub.setPortName(getWeatherPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("WeatherPort".equals(inputPortName)) {
            return getWeatherPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://weather.app.com/", "WeatherService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://weather.app.com/", "WeatherPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("WeatherPort".equals(portName)) {
            setWeatherPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
