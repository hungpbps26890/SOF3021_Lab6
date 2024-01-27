package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DrinkController {

	@GetMapping("detail")
	public String getDrinkDetail() {
		
		return "detail";
	}
}
