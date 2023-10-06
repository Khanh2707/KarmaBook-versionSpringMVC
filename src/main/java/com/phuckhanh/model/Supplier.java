package com.phuckhanh.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "karma.supplier")
public class Supplier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idSupplier;
	private String nameSupplier;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "idSupplier")
	List<Book> books;
	
	public Supplier() {
	}

	public Supplier(String nameSupplier, List<Book> books) {
		this.nameSupplier = nameSupplier;
		this.books = books;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getIdSupplier() {
		return idSupplier;
	}

	public void setIdSupplier(int idSupplier) {
		this.idSupplier = idSupplier;
	}

	public String getNameSupplier() {
		return nameSupplier;
	}

	public void setNameSupplier(String nameSupplier) {
		this.nameSupplier = nameSupplier;
	}

	@Override
	public String toString() {
		return "Supplier [idSupplier=" + idSupplier + ", nameSupplier=" + nameSupplier + "]";
	}
	
	
}
