package com.niit.rcart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.rcart.model.Supplier;
import com.niit.rcart.DAO.SupplierDAO;

@Service("SupplierService")
public class SupplierService implements ISupplierService{

	@Autowired(required=true)
	public SupplierDAO sd;
	
	public void addSupplier(Supplier s)
	{
		sd.addSupplier(s);;
	}
	public List<Supplier> viewAllSupplier() {
		
		return sd.viewAllSuppliers();
	}
	public void deleteSupplier(int sid) {
		sd.deleteSupplier(sid);
		
	}
	public void updateSupplier(Supplier s) {
		sd.updateSupplier(s);
	}
	public Supplier editSupplier(int sid) {
		
		return sd.editSupplier(sid);
	}
	
}
