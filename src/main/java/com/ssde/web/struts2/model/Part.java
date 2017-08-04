package com.ssde.web.struts2.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="parts")
public class Part {
	
	@Id @GeneratedValue
	Long id;
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }

	String brand;
	public String getBrand() { return brand; }
	public void setBrand(String brand) { this.brand = brand; }

	String serial;
	public String getSerial() { return serial; }
	public void setSerial(String serial) { this.serial = serial; }

	String kind;
	public String getKind() { return kind; }
	public void setKind(String kind) { this.kind = kind; }

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="repair_fk")
	Repair repair;
	public Repair getRepair() { return repair; }
	public void setRepair(Repair repair) { this.repair = repair; }

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="device_fk")
	Device device;
	public Device getDevice() { return device; }
	public void setDevice(Device device) { this.device = device; }
	
	public Part() {
	}

	public Part(Long id, String brand, String serial, String kind, Repair repair) {
		this.brand = brand;
		this.serial = serial;
		this.kind = kind;
		this.repair = repair;
	}
}
