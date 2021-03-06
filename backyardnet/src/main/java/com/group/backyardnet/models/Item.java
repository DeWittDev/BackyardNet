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
import javax.validation.constraints.NotNull;
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
    @NotNull(message="The item needs a price to be sold")
    private Integer price;
    
  //Description
    @NotEmpty(message="Need a description onf the item")
    @Size(min=10, message="Description needs to include a little more than that")
    private String description;
    
  //ZipCode
    @NotNull(message="Needs Zip Code")
    private Integer zipCode;
    
  //Image of Item
    //private String imgurl;
    
    
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

	public Integer getZipCode() {
		return zipCode;
	}

	public void setZipCode(Integer zipCode) {
		this.zipCode = zipCode;
	}

	//public String getImgurl() {
	//	return imgurl;
	//}
	//public void setImgurl(String imgurl) {
	//	this.imgurl = imgurl;
	//}
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
}
