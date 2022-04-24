package com.group.backyardnet.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="items")
public class Item {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
  //Item Name
    @NotEmpty(message="Item needs a name")
    @Size(min=3, message="Item name is too short")
    private String itemName;
    
  //Condition
    @NotEmpty(message="What condition is the item currently in?")
    @Size(min=4, message="Need more description")
    private String condition;
    
  //Price
    @NotEmpty(message="The item needs a price to be sold")
    private Integer price;
    
  //ZipCode
    @NotEmpty(message="Must include your Zip Code")
    @Size(min=5, max=9, message="Include only the first five digits of your Zip Code")
    private Integer zipCode;
    
  //Image of Item
    @NotEmpty(message="We need to see what you are selling!")
    private String image;
    
  //DateTime
	@Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date createdAt;

    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date updatedAt;	
    
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
    
  //User
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="userId")
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
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	
    
}
