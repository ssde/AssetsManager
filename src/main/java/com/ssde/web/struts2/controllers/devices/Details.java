package com.ssde.web.struts2.controllers.devices;

import java.sql.Date;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssde.web.struts2.db.actions.BaseAction;
import com.ssde.web.struts2.model.Device;
import com.ssde.web.struts2.model.Owner;
import com.ssde.web.struts2.model.Part;
import com.ssde.web.struts2.model.Repair;

@SuppressWarnings("serial")
public class Details extends BaseAction {

//	Logger logger = LogManager.getLogger(this.getClass());
	Logger log = LogManager.getLogger("Controller_Devices_Details");
	
	public String execute(){
		log.info("Executing from the owners listing action");
		device = services.getDeviceById(id);
		brand = device.getBrand();
		model = device.getModel();
		series = device.getSeries();
		qad_tag = device.getQad_tag();
		service_tag = device.getService_tag();
		express = device.getExpress();
		purchase = device.getPurchase();
		warranty_end = device.getWarranty_end();
		comments = device.getComments();
		owner = device.getOwner();
		repairs = services.getAllRepairsByDeviceId(id);
		parts = services.getAllPartsByDeviceId(id);
		return SUCCESS;
	}
	
	long id;
	public long getId() { return id; }
	public void setId(long val) { id = val; }
	
	String brand;
	public String getBrand() { return brand;	}
	public void setBrand(String brand) { this.brand = brand; }

	String model;
	public String getModel() { return model; }
	public void setModel(String model) { this.model = model; }

	String series;
	public String getSeries() { return series; }
	public void setSeries(String series) { this.series = series; }

	String qad_tag;
	public String getQad_tag() { return qad_tag; }
	public void setQad_tag(String qad_tag) { this.qad_tag = qad_tag; }

	String service_tag;
	public String getService_tag() { return service_tag; }
	public void setService_tag(String service_tag) { this.service_tag = service_tag; }

	String express;
	public String getExpress() { return express; }
	public void setExpress(String express) { this.express = express; }

	Device device;
	public Device getDevice() { return device; }
	
	Date purchase;
	public Date getPurchase() { return purchase; }
	public void setPurchase(Date purchase) { this.purchase = purchase; }
	
	Date warranty_end;
	public Date getWarranty_end() { return warranty_end; }
	public void setWarranty_end(Date warranty_end) { this.warranty_end = warranty_end; }
	
	String comments;
	public String getComments() { return comments; }
	public void setComments(String comments) { this.comments = comments; }

	Owner owner;
	public Owner getOwner() { return owner; }
	public void setOwner(Owner tmp) { owner = tmp; }
	
	Set<Repair> repairs;
	public Set<Repair> getRepairs() { return repairs; }
	public void setRepairs(Set<Repair> repairs) { this.repairs = repairs; }
	
	Set<Part> parts;
	public Set<Part> getParts() { return parts; }
	public void setParts(Set<Part> parts) { this.parts = parts; }

}