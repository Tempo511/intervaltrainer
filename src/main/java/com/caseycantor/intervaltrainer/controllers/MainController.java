package com.caseycantor.intervaltrainer.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.time.LocalDateTime;  
import java.time.format.DateTimeFormatter;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.caseycantor.intervaltrainer.models.LoginUser;
import com.caseycantor.intervaltrainer.models.User;
import com.caseycantor.intervaltrainer.models.IntervalScore;
import com.caseycantor.intervaltrainer.services.IntervalScoreService;
import com.caseycantor.intervaltrainer.services.UserService;




@Controller
public class MainController {
	
	@Autowired
	UserService userServ;
	
	@Autowired
	IntervalScoreService intervalService;
	
	//home page for guests and logged in users
	@GetMapping("/dashboard")
	public String dashboard(Model model, HttpSession session) {
		model.addAttribute("score", new IntervalScore());
		return "dashboard.jsp";
	}
	

	//takes to login and registration
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		
		return "login.jsp";
	}
	
	
	@PostMapping("/score/create")
	public String createScore(@ModelAttribute("score") IntervalScore intervalScore, Model model, BindingResult result, HttpSession session) {
		System.out.println("starting post");
		//check to see if user is logged in, if not they will be sent to login page. 
		if(session.getAttribute("uuid") == null)return "redirect:/";
		
		if(result.hasErrors()) {
			model.addAttribute("intervalScore", new IntervalScore());
			System.out.println("something went wrong with posting score");
			return "dashboard.jsp";
			
		}
		System.out.println("made it past result validation");
		User user = userServ.getOne((Long) session.getAttribute("uuid"));
		intervalScore.setUser(user);
		
		intervalService.addIntervalScore(intervalScore);
		return ("redirect:/dashboard");
	}
	

	
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			
			return "login.jsp";
			
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
	
	@GetMapping("/leaderboard")
	public String leaderboard(Model model, HttpSession session) {
		
		User user = userServ.getOne((Long) session.getAttribute("uuid"));
		List<IntervalScore> userScores = intervalService.getAssignedUsers(user);
		List<IntervalScore> allScores = intervalService.allIntervalScoresSorted();
		List<IntervalScore> topScores = new ArrayList<IntervalScore>();
		
		//amount to render top scores
		int amount = 25;
		
		//re-assign amount if there aren't 25 scores posted. 
		if(allScores.size() < amount)
		{
			amount = allScores.size();
		}
		for(int i = 0; i < amount; i++) {
			topScores.add(allScores.get(i));
		}
		
//		
		model.addAttribute("user", user);
		model.addAttribute("userScores", userScores);
		model.addAttribute("topScores", topScores);
		
	
		return "leaderboard.jsp";
	}

}
