package com.group.backyardnet.services;

import com.group.backyardnet.models.LoginUser;
import com.group.backyardnet.models.User;
import com.group.backyardnet.repositories.UserRepository;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepo;

    // Validate User for Duplicate email & Password
    public void validate(User newUser, Errors errors) {
        // EMAIL
        if (userRepo.findByEmail(newUser.getEmail()) != null) {
            errors.rejectValue("email", "taken", "invalid email");
        }

        // PASSWORD
        if (!newUser.getPassword().equals(newUser.getConfirmPassword())) {
            errors.rejectValue("confirmPassword", "mismatch", "Passwords did not match. Try Again!!!");
        }
    }

    // Register User
    public User registerUser(User newUser) {
        String hashedPassword = (BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt()));
        newUser.setPassword(hashedPassword);
        return userRepo.save(newUser);

    }

    // Find User By Email
    public User findByUserName(String userName) {
        return userRepo.findByUserName(userName);
    }

    // Find User by id
    public User findById(Long id) {
        return userRepo.findById(id);
    }

    // Authenticate User for Login
    public boolean authenticateUser(LoginUser newLogin, Errors errors) {
        // Find By Email
        User user = userRepo.findByUserName(newLogin.getUserName());

        // if User is NOT found by email return false
        if (user == null) {
            errors.rejectValue("email", "notExist", "This email does not exist. Try again or Log In.");
            return false;
        }

        // else if user is found check if password match the user
        else {
            if (!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
                errors.rejectValue("password", "Incorrect", "Incorrect Password Please Try Again!!!");
                return false;
            }
            return true;
        }
    }
}
