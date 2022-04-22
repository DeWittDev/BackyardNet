
//Darius model
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
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    @Size(min = 3, max = 200, message = "Item Name must be between 3 and 200 characters")
    private String itemName;

    @NotEmpty
    @Size(min = 5, max = 200, message = "Description must be between 5 and 200 characters")
    private String description;

    @NotEmpty
    @Size(min = 3, max = 200, message = "Item Name must be between 3 and 200 characters")
    private String condition;

    @NotEmpty
    private Integer price;

    @NotEmpty
    @Size(min = 3, max = 200, message = "Item Name must be between 3 and 200 characters")
    private Integer zipCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getItemName() {
        return this.itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCondition() {
        return this.condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public Integer getPrice() {
        return this.price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getZipCode() {
        return this.zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
