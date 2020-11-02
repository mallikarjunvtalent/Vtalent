package com.userstores.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		//return "plain-login";
		return "fancy-login";
	}
	
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
	}
	
	@GetMapping("/leaders")
	public String managers() {
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String admains() {
		return "systems";
	}
}
