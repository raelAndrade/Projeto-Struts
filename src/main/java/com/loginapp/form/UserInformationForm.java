package com.loginapp.form;

import javax.servlet.http.HttpServlet;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class UserInformationForm extends ActionForm{

	private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	
	public String getUsername(){
		return username;
	}
	
	public void SetUsername(String username){
		this.username = username;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public ActionErrors validate(ActionMapping mapping, HttpServlet request){
		ActionErrors errors = new ActionErrors();
		
		// validate the username property of the form bean
		if(getUsername() == null || ("".equals(getUsername()))){
			errors.add("username", new ActionMessage("errors.no.userId"));
		}
		// validate the password property of the form bean
		if(getPassword() == null || ("".equals(getPassword()))){
			errors.add("password", new ActionMessage("errors.no.passWord"));
		}
		return errors;
	}

}
