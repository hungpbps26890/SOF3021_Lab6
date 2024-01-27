package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.poly.dao.AddressDAO;
import com.poly.dao.UserAddressDAO;
import com.poly.dao.UserDAO;
import com.poly.entity.User;
import com.poly.utils.SessionService;

import jakarta.validation.Valid;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;

	@Autowired
	AddressDAO addressDAO;

	@Autowired
	UserAddressDAO userAddressDAO;

	@Autowired
	SessionService sessionService;

	@GetMapping("login")
	public String getLogin(Model model) {
		model.addAttribute("user", new User());

		return "login";
	}

	@PostMapping("login")
	public String login(Model model, @Valid @ModelAttribute("user") User user, BindingResult result) {

		if (result.hasFieldErrors("username") || result.hasFieldErrors("password")) {
			System.out.println("Has errors: " + result.toString());
		} else {
			String username = user.getUsername();
			String password = user.getPassword();

			try {
				User currentUser = userDAO.findById(username).get();

				if (currentUser != null && currentUser.getPassword().equals(password)) {
					sessionService.setAttribute("currentUser", currentUser);
					System.out.println("Login Successfully");
					return "redirect:/home";
				} else {
					throw new Exception();
				}
			} catch (Exception e) {
				model.addAttribute("errorMessage", "Username or password is invalid!");
			}
		}

		return "login";
	}

	@GetMapping("register")
	public String getRegister(Model model) {
		model.addAttribute("registerUser", new User());

		return "register";
	}

	@PostMapping("register")
	public String register(Model model, @Valid @ModelAttribute("registerUser") User registerUser, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("Has errors: " + result.toString());
		} else {
			registerUser = userDAO.save(registerUser);
			
			sessionService.setAttribute("currentUser", registerUser);
			
			return "redirect:/home";
		}

		return "register";
	}
}
