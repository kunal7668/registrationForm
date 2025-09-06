package com.project;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;


public class NewClass implements Servlet {
    // Life cycle methods
    ServletConfig conf;
    @Override
    public void init(ServletConfig conf){
        this.conf = conf;
        System.out.println("Initialized...........");
    }
    @Override
    public void service(ServletRequest req, ServletResponse resp){
        System.out.println("Servicing..........");
    }
    @Override
    public void destroy(){
        System.out.println("Destroying..........");
    }
    // Non Life cycle methods.........
    @Override
    public ServletConfig getServletConfig(){
        return conf;
    }
    @Override
    public String getServletInfo(){
        return "This is just for INformation";
    }
}