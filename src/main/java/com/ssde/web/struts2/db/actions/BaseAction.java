package com.ssde.web.struts2.db.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssde.web.struts2.db.services.Services;

public class BaseAction extends ActionSupport{

	/**
	 * So that Spring can inject the business singleton
	 */
	protected Services services;
	
	public void setServices(Services value) {
		services = value;
	}
	
	/**
	 * For redirect results
	 */
	protected String redirectUrl;
	public String getRedirectUrl() {
		return redirectUrl;
	}
	public String redirect(String to) {
		redirectUrl = to;
		return "redirect";
	}
}
