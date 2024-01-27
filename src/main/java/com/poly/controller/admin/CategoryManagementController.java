package com.poly.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryManagementController {

	@GetMapping("admin/category")
	public String getCategoryManagement() {
		
		return "admin/category-management";
	}
}
