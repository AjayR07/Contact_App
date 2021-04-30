package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Contact;


public interface ContactDAO {
	
	public void saveOrUpdate(Contact contact);
	
	public void delete(int contactId);
	
	public Contact get(int contactId);
	
	public List<Contact> list();
}
