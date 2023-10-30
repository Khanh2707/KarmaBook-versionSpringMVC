package com.phuckhanh.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class Book_Version_Key implements Serializable {
	
	private int idBookKey;
	private int idVersionKey;
	
	public int getIdBookKey() {
		return idBookKey;
	}
	
	public void setIdBookKey(int idBookKey) {
		this.idBookKey = idBookKey;
	}
	
	public int getIdVersionKey() {
		return idVersionKey;
	}
	
	public void setIdVersionKey(int idVersionKey) {
		this.idVersionKey = idVersionKey;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(idBookKey, idVersionKey);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book_Version_Key other = (Book_Version_Key) obj;
		return idBookKey == other.idBookKey && idVersionKey == other.idVersionKey;
	}
	
}
