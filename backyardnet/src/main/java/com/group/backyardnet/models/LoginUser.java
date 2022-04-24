//Darius model

package com.group.backyardnet.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
    @NotEmpty(message = "This field cannot be left empty")
    @Size(message = "Please enter a valid user name")
    private String userName;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String password;

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
}
