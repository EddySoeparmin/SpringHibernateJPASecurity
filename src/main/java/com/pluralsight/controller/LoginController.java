package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController
{
	// No need to add .html because in web.xml <servlet-mapping> has indicated to add *.html <url-pattern>
	@RequestMapping( value = "/login", method = RequestMethod.GET )
	public String login( ModelMap model )
	{
		System.out.println( "In the login method" );

		// This will tell our InternalResourceViewResolver ... /WEB-INF/jsp/ (defined in servlet-config.xml) to lookup
		// This will look for login.jsp under ... jsp folder
		return "login";
	}

	// For login failed
	@RequestMapping( value = "/loginFailed", method = RequestMethod.GET )
	public String loginFailed( ModelMap model )
	{
		System.out.println( "Login Failed" );

		// Set the error flag so that the login.jsp <c:if test="${not empty error }"> will pick up
		model.addAttribute( "error", "true" );

		return "login";
	}

	// For logout
	@RequestMapping( value = "/logout", method = RequestMethod.GET )
	public String logout( ModelMap model )
	{
		return "logout";
	}

	// For 403 - Authentication error
	@RequestMapping( value = "/403", method = RequestMethod.GET )
	public String error403( ModelMap model )
	{
		return "403";
	}
}