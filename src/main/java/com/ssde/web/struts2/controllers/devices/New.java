package com.ssde.web.struts2.controllers.devices;

import com.ssde.web.struts2.db.actions.BaseAction;
import com.ssde.web.struts2.model.Device;

public class New extends BaseAction{
	
	public String execute() {
		if(brand!=null && !brand.equals("") && model!=null && !model.equals("")){
			Device d = new Device();
			d.setBrand(brand);
			d.setExpress(express);
			d.setModel(model);
			d.setService_tag(service_tag);
			d.setQad_tag(qad_tag);
			services.createDevice(d);
		}
		return "success";
	}
	
	String brand;
	public String getBrand() { return brand;	}
	public void setBrand(String brand) { this.brand = brand; }

	String model;
	public String getModel() { return model; }
	public void setModel(String model) { this.model = model; }

	String qad_tag;
	public String getQad_tag() { return qad_tag; }
	public void setQad_tag(String qad_tag) { this.qad_tag = qad_tag; }

	String service_tag;
	public String getService_tag() { return service_tag; }
	public void setService_tag(String service_tag) { this.service_tag = service_tag; }

	String express;
	public String getExpress() { return express; }
	public void setExpress(String express) { this.express = express; }
	
}
