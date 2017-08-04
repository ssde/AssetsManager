package com.ssde.web.struts2.model;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="owners")
public class Owner {
	@Id @GeneratedValue
	Long id;
	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }

	String name;
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	String area;
	public String getArea() { return area; }
	public void setArea(String area) { this.area = area; }
	
//	@ManyToMany
//	@JoinTable(
//		name="devices_owners",
//		joinColumns=@JoinColumn(name="owner_fk"),
//		inverseJoinColumns=@JoinColumn(name="device_fk")
//	)
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "owner")
	Set<Device> devices;
	public Set<Device> getDevices() { return devices; }
	public void setDevices(Set<Device> devices) { this.devices = devices; }

	public Owner(Long id, String name, String area, Set<Device> devices) {
		this.name = name;
		this.area = area;
		this.devices = devices;
	}

	public Owner(){}
}
