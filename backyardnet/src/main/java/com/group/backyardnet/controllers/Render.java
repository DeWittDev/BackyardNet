package com.group.backyardnet.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.group.backyardnet.models.LoginUser;
import com.group.backyardnet.models.User;
import com.group.backyardnet.services.ItemService;

@Controller
public class Render {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ItemService itemService;
	
	//@Autowired
	//private UserService userService;
	
	//------------------------------------- Login ------------------------------------------------
	@GetMapping("/")
	public String login() {
		if(session.getAttribute("currentUser") != null) {
    		return "redirect:/home";
    	}
		return "login.jsp";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, HttpSession session, @ModelAttribute("newUser") User user) {
    	//userService.authenticate(newLogin, result);
    	if(result.hasErrors()) {
    		return "redirect:/login";
    	}
    	//User currentUser = userService.findByEmail(newLogin.getEmail());
    	
    	//session.setAttribute("currentUser", currentUser);
    	return "redirect:/home";
    }
	
	//------------------------------------- Register ---------------------------------------------
	@GetMapping("/register")
	public String Register(@ModelAttribute("newUser") User newUser, @ModelAttribute("newLogin") LoginUser newLogin, HttpSession session) {
    	if(session.getAttribute("currentUser") != null) {
    		return "redirect:/home";
    	}
    	return "index.jsp";
    }
	
	@PostMapping("/register/new")
    public String register(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session, @ModelAttribute("newLogin") LoginUser newLogin) {
    	//userService.validation(user, result);
    	if(result.hasErrors()) {
    		return "redirect:/";
    	}
		//userService.register(user);
		//session.setAttribute("currentUser", user);
    	return "redirect:/home";
    }
	
	//------------------------------------- Home Page -------------------------------------------
	@GetMapping("/home")
	public String home(Model model) {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		model.addAttribute("item", itemService.findAll());
		return "home.jsp";
	}
	
	//------------------------------------- Add Item --------------------------------------------
	@GetMapping("/item/new")
	public String addItem() {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		return "additem.jsp";
	}
	
	//------------------------------------- Edit Item -------------------------------------------
	
	
	//------------------------------------- Account Page ----------------------------------------
	
	
	//------------------------------------- Edit Account ----------------------------------------
	
}
