package com.niit.rcart.service;

import java.util.List;

import com.niit.rcart.model.Supplier;

public interface ISupplierService 
{
	public void addSupplier(Supplier s);
	public List<Supplier>viewAllSupplier();
	public void deleteSupplier(int sid);
	public void updateSupplier(Supplier s);
	public Supplier editSupplier(int sid);
}
