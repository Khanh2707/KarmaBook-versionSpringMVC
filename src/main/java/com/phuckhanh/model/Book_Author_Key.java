package com.phuckhanh.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class Book_Author_Key implements Serializable {

	private int idBookKey;
	private int idAuthorKey;
	
	public int getIdBookKey() {
		return idBookKey;
	}
	
	public void setIdBookKey(int idBookKey) {
		this.idBookKey = idBookKey;
	}
	
	public int getIdAuthorKey() {
		return idAuthorKey;
	}
	
	public void setIdAuthorKey(int idAuthorKey) {
		this.idAuthorKey = idAuthorKey;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idAuthorKey, idBookKey);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book_Author_Key other = (Book_Author_Key) obj;
		return idAuthorKey == other.idAuthorKey && idBookKey == other.idBookKey;
	}
	
	
}
