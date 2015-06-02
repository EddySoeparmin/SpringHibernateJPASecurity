package com.pluralsight.security;

import java.io.Serializable;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class FitnessPermissionEvaluator implements PermissionEvaluator
{
	private DataSource	datasource;

	public DataSource getDatasource()
	{
		return datasource;
	}

	public void setDatasource( DataSource datasource )
	{
		this.datasource = datasource;
	}

	public boolean hasPermission( Authentication authentication, Object targetDomainObject, Object permission )
	{
		JdbcTemplate template = new JdbcTemplate( datasource );
		Object[] args = { 														// Refer to the Permissions table
		( (User) authentication.getPrincipal() ).getUsername(),		// mark (permissions.username)
				targetDomainObject.getClass().getName(), 					// com.pluralsight.model.Goal (permissions.target)
				permission.toString() };										// createGoal (permissions.permission)

		// Retrieve this user's from permissions table
		int count = template.queryForObject(
				"select count(*) from permissions p where p.username = ? and p.target = ? and p.permission = ?",
				args, Integer.class );

		return ( count == 1 );
	}

	public boolean hasPermission( Authentication authentication, Serializable targetId, String targetType,
			Object permission )
	{
		// Similar to the overload function above
		return false;
	}

	// For 405 - Permission error - not working
	@RequestMapping( value = "/405", method = RequestMethod.POST )
	public String error405( ModelMap model )
	{
		return "405";
	}
}
