//Darius model

package com.group.backyardnet.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 3, max = 200, message = "Name must be between 3 and 200 characters")
    private String firstName;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 3, max = 200, message = "Name must be between 3 and 200 characters")
    private String lastName;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 3, max = 200, message = "Name must be between 3 and 200 characters")
    private String city;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 3, max = 200, message = "Name must be between 3 and 200 characters")
    private String state;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 3, max = 200, message = "Name must be between 3 and 200 characters")
    private String userName;

    @NotEmpty(message = "This field cannot be left empty")
    @Email(message = "Please enter a valid email address!")
    private String email;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String password;

    @Transient
    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String confirm;

    @OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
    private List<Item> item;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Comment> comment;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return this.confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    public List<Comment> getComment() {
        return this.comment;
    }

    public void setComment(List<Comment> comment) {
        this.comment = comment;
    }

    public List<Item> getItem() {
        return this.item;
    }

    public void setItem(List<Item> item) {
        this.item = item;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
