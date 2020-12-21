package com.onlineStore.service;

import com.onlineStore.bean.Product;
import com.onlineStore.dao.DataBaseAdd;
import com.onlineStore.dao.DataBaseDelete;
import com.onlineStore.dao.DataBaseUpdate;

public class ProductOperations {
public boolean addProduct(Product product)
{
	System.out.println("Add Product");
	DataBaseAdd db=new DataBaseAdd();
	
	return db.addProduct(product);
}
public boolean updateProduct(String Id,int Quantity)
{
	DataBaseUpdate db=new DataBaseUpdate();
	db.updateProduct(Id, Quantity);
	return true;
}
public boolean deleteProduct(String Id)
{
	DataBaseDelete db=new DataBaseDelete();
	return db.deleteProduct(Id);
}
}
