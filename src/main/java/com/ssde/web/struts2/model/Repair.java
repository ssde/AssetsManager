package com.ssde.web.struts2.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="repairs")
public class Repair {
	@Id @GeneratedValue
	Long id;
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }
	
	String log;
	public String getLog() { return log; }
	public void setLog(String log) { this.log = log; }

	Date lod_date;
	public Date getLod_date() { return lod_date; }
	public void setLod_date(Date lod_date) { this.lod_date = lod_date; }

	String techname;
	public String getTechname() { return techname; }
	public void setTechname(String techname) { this.techname = techname; }

	@OneToMany(mappedBy = "repair")
	@Column(name="repair_fk")
	Set<Part> parts;
	public Set<Part> getParts() { return parts; }
	public void setParts(Set<Part> parts) { this.parts = parts; }
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="device_fk")
	Device device;
	public Device getDevice() { return device; }
	public void setDevice(Device device) { this.device = device; }
	
	public Repair(Long id, String log, Date lod_date, String techname, Set<Part> parts) {
		super();
		this.id = id;
		this.log = log;
		this.lod_date = lod_date;
		this.techname = techname;
		this.parts = parts;
	}
}
