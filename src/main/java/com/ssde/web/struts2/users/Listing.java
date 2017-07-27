package com.ssde.web.struts2.users;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Listing {
//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Users_Listings");
	
	public String execute(){
		return "success";
	}
}
