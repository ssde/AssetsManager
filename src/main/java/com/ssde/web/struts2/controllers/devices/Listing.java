package com.ssde.web.struts2.controllers.devices;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssde.web.struts2.db.actions.BaseAction;
import com.ssde.web.struts2.model.Device;

public class Listing extends BaseAction{
//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Controller_Devices_Listings");
	
	public String execute(){
		log.info("Executing from the devices listing action");
		devices = services.getAllDevices();
		return "success";
	}
	
	List<Device> devices;
	public List<Device> getDevices() { return devices; }
}
