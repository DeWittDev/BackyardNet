package com.group.backyardnet.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.group.backyardnet.models.Item;
import com.group.backyardnet.models.LoginUser;
import com.group.backyardnet.models.User;
import com.group.backyardnet.services.ItemService;
import com.group.backyardnet.services.UserService;

@Controller
public class Render {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private UserService userService;
	
	//------------------------------------- Login ------------------------------------------------
	@GetMapping("/")
	public String login(@ModelAttribute("newLogin") LoginUser newLogin, @ModelAttribute("newUser") User user) {
		return "login.jsp";
	}
	
	@PostMapping("/login")
	public String loginSubmit(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, @ModelAttribute("newUser") User user) {
    	userService.authenticateUser(newLogin, result);
    	if(result.hasErrors()) {
    		return "redirect:/login";
    	}
    	User currentUser = userService.findByUserName(newLogin.getUserName());
    	
    	session.setAttribute("currentUser", currentUser);
    	return "redirect:/home";
    }
	
	@GetMapping("/logout")
    public String logOut() {
    	session.invalidate();
    	return "redirect:/";
    }
	
	//------------------------------------- Register ---------------------------------------------
	@GetMapping("/register")
	public String register(@ModelAttribute("newUser") User newUser, @ModelAttribute("newLogin") LoginUser newLogin, HttpSession session) {
    	if(session.getAttribute("currentUser") != null) {
    		return "redirect:/home";
    	}
    	return "index.jsp";
    }
	
	@PostMapping("/register/new")
    public String registerSubmit(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session, @ModelAttribute("newLogin") LoginUser newLogin) {
		userService.validate(user, result);
    	if(result.hasErrors()) {
    		return "redirect:/";
    	}
		userService.registerUser(user);
		session.setAttribute("currentUser", user);
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
	public String addItem(@ModelAttribute("item") Item item) {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		return "additem.jsp";
	}
	
	@PostMapping("/item/add")
	public String addSubmit(@Valid @ModelAttribute("newItem") Item item, BindingResult result) {
		if(result.hasErrors()) {
    		return "index.jsp";
    	}
		itemService.addItem(item);
		return "redirect:/home";
	}
	
	//------------------------------------- View Item -------------------------------------------
	@GetMapping("/item/{id}")
	public String viewItem(@PathVariable("id") Long id, Model model) {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		model.addAttribute("item", itemService.findById(id));
		return "showItem.jsp";
	}
	
	//------------------------------------- Edit Item -------------------------------------------
	@GetMapping("/item/edit/{id}")
	public String edit(Model model, @PathVariable("id") Long id) {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		model.addAttribute("item", itemService.findById(id)); 
		return "edititem.jsp";
	}
	
	@PutMapping("/item/submit/{id}")
	public String itemEdit(@Valid @ModelAttribute("edit") Item item, @PathVariable("id") Long id, BindingResult result) {
		if(result.hasErrors()) {
    		return "redirect:/";
    	}
		itemService.edit(item);
		return "redirect:/home";
	}
	
	//------------------------------------- Account Page ----------------------------------------
	@GetMapping("/user/{id}")
	public String Account(@PathVariable("id") Long id) {
		return "profile.jsp";
	}
	
	//------------------------------------- Edit Account ----------------------------------------
	@GetMapping("/user/edit/{id}")
	public String editUser(@Valid @PathVariable("id") Long id) {
		if(session.getAttribute("currentUser") == null) {
    		return "redirect:/";
    	}
		return "editprofile.jsp";
	}
}
