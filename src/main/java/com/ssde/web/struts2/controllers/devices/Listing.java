package com.ssde.web.struts2.controllers.devices;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Listing {
//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Controller_Devices_Listings");
	
	public String execute(){
		log.info("Executing from the devices listing action");
		return "success";
	}
}
