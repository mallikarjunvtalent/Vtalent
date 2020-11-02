package com.userstores.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name="storetable")
public class StoreBean 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int storeId;
	
	@NotBlank(message = "* store name can't be blank")
//	@Size(min =3 ,max = 15,message = "* name should have char between 3-15")
	private String storeName;
	
	@NotBlank(message = "* store location can't be blank")
//	@Size(min =3 ,max = 15,message = "* location should have char between 3-15")
	private String storeArea;
	private int zipcode;
	private float distanceInMiles;
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreArea() {
		return storeArea;
	}
	public void setStoreArea(String storeArea) {
		this.storeArea = storeArea;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public float getDistanceInMiles() {
		return distanceInMiles;
	}
	public void setDistanceInMiles(float distanceInMiles) {
		this.distanceInMiles = distanceInMiles;
	}
	@Override
	public String toString() {
		return "StoreBean [storeId=" + storeId + ", storeName=" + storeName + ", storeArea=" + storeArea + ", zipcode="
				+ zipcode + ", distanceInMiles=" + distanceInMiles + "]";
	}
	
	

}
