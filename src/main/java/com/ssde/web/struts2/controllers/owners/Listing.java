package com.ssde.web.struts2.controllers.owners;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssde.web.struts2.db.actions.BaseAction;
import com.ssde.web.struts2.model.Owner;

@SuppressWarnings("serial")
public class Listing extends BaseAction{

//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Controller_Owners_Listings");
	
	public String execute(){
		log.info("Executing from the owners listing action");
		owners = services.getAllOwners();
		return SUCCESS;
	}
	
	List<Owner> owners;
	public List<Owner> getOwners() { return owners; }
}
