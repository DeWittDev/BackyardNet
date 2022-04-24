package com.group.backyardnet.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "item")
public class Item {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
  //Item Name
    @NotEmpty(message="Item needs a name")
    @Size(min=3, message="Item name is too short")
    private String itemName;
    
  //Price
    @NotEmpty(message="The item needs a price to be sold")
    private Integer price;
    
  //ZipCode
    @NotEmpty(message="Must include your Zip Code")
    @Size(min=5, max=9, message="Include only the first five digits of your Zip Code")
    private Integer zipCode;
    
  //Image of Item
    private String imgurl;
    
    
  //User
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User users;

    
  //Getters and Setters
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getZipCode() {
		return zipCode;
	}
	public void setZipCode(Integer zipCode) {
		this.zipCode = zipCode;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
    
}
