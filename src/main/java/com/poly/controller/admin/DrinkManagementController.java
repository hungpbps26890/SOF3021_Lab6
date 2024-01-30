package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.ToppingDAO;
import com.poly.entity.DrinkTopping;
import com.poly.dao.CategoryDAO;
import com.poly.dao.DrinkDAO;
import com.poly.entity.Category;
import com.poly.entity.Drink;
import com.poly.entity.Topping;

import jakarta.validation.Valid;

@Controller
public class DrinkManagementController {
	
	@Autowired
	DrinkDAO drinkDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ToppingDAO toppingDAO;
	
	boolean edit = false;

	@GetMapping("admin/drink")
	public String getProductManagement(Model model) {
		
		Drink drink = new Drink();
		model.addAttribute("drink", drink);
		
		List<Drink> drinks = drinkDAO.findAll();
		model.addAttribute("drinks", drinks);
		
		edit = false;
		model.addAttribute("edit", edit);
		
		return "admin/drink-management";
	}
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryDAO.findAll();
	}
	
	@ModelAttribute("toppings")
	public List<Topping> getToppings() {
		return toppingDAO.findAll();
	}
	
	@PostMapping("admin/drink")
	public String save(Model model, @Valid @ModelAttribute("drink") Drink drink, BindingResult result,
			@RequestPart("photo") MultipartFile photo,
			@RequestParam("sizeSmall") Optional<String> sizeSmall,
			@RequestParam("sizeMedium") Optional<String> sizeMedium,
			@RequestParam("sizeLarge") Optional<String> sizeLarge,
			@RequestParam("sizeSmallPrice") Optional<Double> sizeSmallPrice,
			@RequestParam("sizeMediumPrice") Optional<Double> sizeMediumPrice,
			@RequestParam("sizeLargePrice") Optional<Double> sizeLargePrice,
			@RequestParam("toppings") List<Topping> toppings) {
		
		if (result.hasErrors() || photo.isEmpty()) {
			model.addAttribute("errorFile", "Please choose Image");
		} else {
			
			System.out.println(drink.getDrinkToppings().toString());
			
			System.out.println(sizeSmall.isPresent());
			System.out.println(sizeSmallPrice);
		}
		
		List<Drink> drinks = drinkDAO.findAll();
		model.addAttribute("drinks", drinks);
		
		edit = false;
		model.addAttribute("edit", edit);
		
		return "admin/drink-management";
	}
	
}
