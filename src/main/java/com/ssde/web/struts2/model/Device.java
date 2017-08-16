package com.ssde.web.struts2.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import org.joda.time.DateTime;

@Entity
@Table(name="devices")
public class Device {
	@Id @GeneratedValue
	Long id;
	public Long getId() {return id;}
	public void setId(Long id) {this.id = id;}
	
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
	
	DateTime purchase;
	public DateTime getPurchase() { return purchase; }
	public void setPurchase(DateTime purchase) { this.purchase = purchase; }
	
	DateTime warranty_end;
	public DateTime getWarranty_end() { return warranty_end; }
	public void setWarranty_end(DateTime warranty_end) { this.warranty_end = warranty_end; }
	
	String comments;
	public String getComments() { return comments; }
	public void setComments(String comments) { this.comments = comments; }
//	@ManyToMany
//	@JoinTable(
//		name="devices_owners",
//		joinColumns=@JoinColumn(name="device_fk"),
//		inverseJoinColumns=@JoinColumn(name="owner_fk")
//	)
	

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="owner_fk")
	Owner owner;
	public Owner getOwner() { return owner; }
	public void setOwner(Owner owner) { this.owner = owner; }

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "device")
	Set<Part> parts = new HashSet<Part>();
	public Set<Part> getParts() { return parts; }
	public void setParts(Set<Part> parts) { this.parts = parts; }
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "device")
	Set<Repair> repairs = new HashSet<Repair>();
	public Set<Repair> getRepairs() { return repairs; }
	public void setRepairs(Set<Repair> repairs) { this.repairs = repairs; }

	public Device(String brand, String model, String series, String qad_tag, String service_tag, String express, DateTime purchase, DateTime warranty_end, String comments,
			Owner owner, Set<Part> parts, Set<Repair> repairs) {
		this.brand = brand;
		this.model = model;
		this.series = series;
		this.qad_tag = qad_tag;
		this.service_tag = service_tag;
		this.express = express;
		this.purchase = purchase;
		this.warranty_end = warranty_end;
		this.comments = comments;
		this.owner = owner;
		this.parts = parts;
		this.repairs = repairs;
	}
	
	public Device(){} 
}
