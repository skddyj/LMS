package com.action;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.EmployeeService;
import com.service.ValidateLoginService;

public class ValidateLoginAction extends ActionSupport{
	private String ename;
	private String password;
	private ValidateLoginService validateLoginService;
	private EmployeeService employeeService;
	public String validateLogin() {
		String state=validateLoginService.validateLogin(ename, password);
		if(state.equals("success")){
			HttpSession session=ServletActionContext.getRequest().getSession();
		      HttpServletResponse response = ServletActionContext.getResponse();
		      session.setAttribute("employee","alex");
			return "success";
		}
		return "failed";
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public ValidateLoginService getValidateLoginService() {
		return validateLoginService;
	}
	public void setValidateLoginService(ValidateLoginService validateLoginService) {
		this.validateLoginService = validateLoginService;
	}
	public EmployeeService getEmployeeService() {
		return employeeService;
	}
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	

}