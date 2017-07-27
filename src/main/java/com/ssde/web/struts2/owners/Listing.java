package com.ssde.web.struts2.owners;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Listing {
//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Owners_Listings");
	
	public String execute(){
		return "success";
	}
}
