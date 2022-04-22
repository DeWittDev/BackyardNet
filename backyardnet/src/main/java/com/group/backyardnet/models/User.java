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
    private String name;

    @NotEmpty(message = "This field cannot be left empty")
    @Email(message = "Please enter a valid email address!")
    private String email;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String password;

    @Transient
    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String confirmPassword;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Item> item;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return this.confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public List<Item> getItem() {
        return this.item;
    }

    public void setItem(List<Item> item) {
        this.item = item;
    }
}
