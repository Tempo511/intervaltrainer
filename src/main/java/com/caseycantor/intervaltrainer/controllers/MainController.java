package com.caseycantor.intervaltrainer.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.caseycantor.intervaltrainer.models.LoginUser;
import com.caseycantor.intervaltrainer.models.User;
import com.caseycantor.intervaltrainer.services.IntervalScoreService;
import com.caseycantor.intervaltrainer.services.UserService;

@Controller
public class MainController {
	
	@Autowired
	UserService userServ;
	
	@Autowired
	IntervalScoreService intervalService;
	
	@GetMapping("/dashboard")
	public String dashboard(Model model, HttpSession session) {
		return "dashboard.jsp";
	}
	

	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		
		
		return "login.jsp";
		
	}
	

	
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			
			return "home.jsp";
			
		}
		
		session.setAttribute("uuid", user.getId());
		return "redirect:/dashboard";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(newLogin, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			System.out.println("couldn't log in.");
			return "home.jsp";
			
		}
		session.setAttribute("uuid", user.getId());
		System.out.println("inside login function");
		return "redirect:/dashboard";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("uuid");
		return "redirect:/";
	}

}
