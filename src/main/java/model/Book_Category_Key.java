package model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class Book_Category_Key implements Serializable {
	
	private int idBookKey;
	private int idCategoryKey;
	
	public int getIdBookKey() {
		return idBookKey;
	}
	
	public void setIdBookKey(int idBookKey) {
		this.idBookKey = idBookKey;
	}
	
	public int getIdCategoryKey() {
		return idCategoryKey;
	}
	
	public void setIdCategoryKey(int idCategoryKey) {
		this.idCategoryKey = idCategoryKey;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idBookKey, idCategoryKey);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book_Category_Key other = (Book_Category_Key) obj;
		return idBookKey == other.idBookKey && idCategoryKey == other.idCategoryKey;
	}
	
	
}
