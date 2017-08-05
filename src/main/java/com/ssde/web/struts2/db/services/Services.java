package com.ssde.web.struts2.db.services;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.ssde.web.struts2.model.Device;
import com.ssde.web.struts2.model.Owner;
import com.ssde.web.struts2.model.Part;
import com.ssde.web.struts2.model.Repair;
import com.ssde.web.struts2.model.Rol;
import com.ssde.web.struts2.model.User;

/**
 * This is the business service tierin the applicarion
 * Transactional annotation is needed so that a hibernate 
 * transaction is set up, otherwise updates won't have an 
 * effect
 * 
 * @author Jorge Rivera (jorge.rivera@ssde.com.mx)
 *
 */
@Transactional
public class Services {

	/**
	 * For Spring can inject the session factory
	 */
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory value) {
		sessionFactory = value;
	}
	
	/**
	 * Shortcut to call the session
	 */
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * Get objects from model by ID
	 */
	public Device getDeviceById(long id) {
		return (Device) session().load(Device.class, id);
	}
	
	public Owner getOwnerById(long id) {
		return (Owner) session().load(Owner.class, id);
	}
	
	public Part getPartById(long id) {
		return (Part) session().load(Part.class, id);
	}
	
	public Repair getRepairById(long id) {
		return (Repair) session().load(Repair.class, id);
	}
	
	public Rol getRolById(long id) {
		return (Rol) session().load(Rol.class, id);
	}
	
	public User getUserById(long id) {
		return (User) session().load(User.class, id);
	}
	
	/**
	 * Delete objects by ID
	 */
	public void deleteDevice(long id) {
		session().delete(getDeviceById(id));
	}
	
	public void deleteOwner(long id) {
		session().delete(getOwnerById(id));
	}
	
	public void deletePart(long id) {
		session().delete(getPartById(id));
	}
	
	public void deleteRepair(long id) {
		session().delete(getRepairById(id));
	}
	
	public void deleteRol(long id) {
		session().delete(getRolById(id));
	}
	
	public void deleteUser(long id) {
		session().delete(getUserById(id));
	}
	
	/**
	 * Create objects
	 */
	public void createDevice(Device d) {
		session().save(d);
	}
	
	public void createOwner(Owner o) {
		session().save(o);
	}
	
	public void createPart(Part p) {
		session().save(p);
	}
	
	public void createRepair(Repair r) {
		session().save(r);
	}
	
	public void createRol(Rol r) {
		session().save(r);
	}
	
	public void createUser(User u) {
		session().save(u);
	}
	
	/**
	 * Get all objects from db
	 */
	@SuppressWarnings("unchecked")
	public List<Device> getAllDevices() {
		return session().createQuery("from devices").list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Owner> getAllOwners() {
		return session().createQuery("from owners").list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Rol> getAllRoles() {
		return session().createQuery("from roles").list();
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		return session().createQuery("from users").list();
	}
	
	public Set<Device> getAllDevicesByOwnerId(long id) {
		return getOwnerById(id).getDevices();
	}
	
	public Set<Part> getAllPartsByDeviceId(long id) {
		return getDeviceById(id).getParts();
	}
	
	public Set<Repair> getAllRepairsByDeviceId(long id) {
		return getDeviceById(id).getRepairs();
	}
	
	public Set<Part> getAllPartsByRepairId(long id) {
		return getRepairById(id).getParts();
	}
	
	public Set<Rol> getAllRolesByUserId(long id) {
		return getUserById(id).getRoles();
	}
	/**
	 * Add references to objects 
	 */
	public void addDeviceToOwner(long ownerId, long deviceId) {
		getOwnerById(ownerId).getDevices().add(getDeviceById(deviceId));
	}
	
	public void addRepairToDevice(long deviceId, long repairId) {
		getDeviceById(deviceId).getRepairs().add(getRepairById(repairId));
	}
	
	public void addPartToDevice(long deviceId, long partId) {
		getDeviceById(deviceId).getParts().add(getPartById(partId));
	}
	
	public void addPartToRepair(long repairId, long partId) {
		getRepairById(repairId).getParts().add(getPartById(partId));
	}
	
	public void addRolToUser(long userId, long rolId) {
		getUserById(userId).getRoles().add(getRolById(rolId));
	}
	
	/**
	 * Remove references from objects
	 */
	public void removeDeviceFromOwner(long ownerId, long deviceId) {
		getOwnerById(ownerId).getDevices().remove(getDeviceById(deviceId));
	}
	
	public void removeRepairFromDevice(long deviceId, long repairId) {
		getDeviceById(deviceId).getRepairs().remove(getRepairById(repairId));
	}
	
	public void removePartFromDevice(long deviceId, long partId) {
		getDeviceById(deviceId).getParts().remove(getPartById(partId));
	}
	
	public void removePartFromRepair(long repairId, long partId) {
		getRepairById(repairId).getParts().remove(getPartById(partId));
	}
	
	public void removeRolFromUser(long userId, long rolId) {
		getUserById(userId).getRoles().remove(getRolById(rolId));
	}
	
}