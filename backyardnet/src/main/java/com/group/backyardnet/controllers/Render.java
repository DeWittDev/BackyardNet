package com.group.backyardnet.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Render {
	@Autowired
	public HttpSession session;
	
	@GetMapping("")
	public String login() {
		return "login.jsp";
	}
}
