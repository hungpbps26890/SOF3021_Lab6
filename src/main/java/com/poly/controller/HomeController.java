package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("home")
	public String getIndex() {
		
		return "index";
	}
	
	@GetMapping("menu") 
	public String getMenu() {
		return "menu";
	}
}
