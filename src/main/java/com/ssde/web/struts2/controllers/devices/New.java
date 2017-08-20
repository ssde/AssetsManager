package com.ssde.web.struts2.controllers.devices;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssde.web.struts2.db.actions.BaseAction;
import com.ssde.web.struts2.model.Device;

public class New extends BaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7251182788665111237L;
	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
	Logger log = LogManager.getLogger("Controller_Devices_New");
	
	public String execute() {
		if(brand!=null && !brand.equals("") && model!=null && !model.equals("")){
			Device d = new Device();
			d.setBrand(brand);
			d.setExpress(express);
			d.setModel(model);
			d.setService_tag(service_tag);
			d.setQad_tag(qad_tag);
			d.setSeries(series);
			try {
				if(!purchase.equals(""))
					d.setPurchase(new Date(formatter.parse(purchase).getTime()));
			} catch (ParseException e) {
				log.error("Purchase date: "+e.getMessage());
			}
			try {
				if(!warranty_end.equals(""))
					d.setWarranty_end(new Date(formatter.parse(warranty_end).getTime()));
			} catch (ParseException e) {
				log.error(e.getMessage());
			}
			d.setComments(comments);
			services.createDevice(d);
			return redirect("Listing.action");
		}
		return SUCCESS;
	}
	
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
	
	String purchase;
	public String getPurchase() { return purchase; }
	public void setPurchase(String purchase) { this.purchase = purchase; }
	
	String warranty_end;
	public String getWarranty_end() { return warranty_end; }
	public void setWarranty_end(String warranty_end) { this.warranty_end = warranty_end; }
	
	String comments;
	public String getComments() { return comments; }
	public void setComments(String comments) { this.comments = comments; }
}
