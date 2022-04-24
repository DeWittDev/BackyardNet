//Darius model

package com.group.backyardnet.models;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 2, max = 200, message = "Must be between 2 and 200!")
    private String username;

    @NotEmpty(message = "This field cannot be left empty")
    @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
    private String password;

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}