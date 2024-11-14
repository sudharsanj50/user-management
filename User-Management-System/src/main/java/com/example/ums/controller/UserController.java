package com.example.ums.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ums.entity.User;
import com.example.ums.service.UserService;


@Controller
public class UserController {
	private final UserService userService;


	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}

	@PostMapping("/add-user")
	public String addUser(User user) {
		userService.addUser(user);
		return "redirect:index.jsp";
	}
	@GetMapping("/display-user")
	public String findAllUsers(Model model) {
		List<User> user=userService.findAllUsers();
		model.addAttribute("users", user);
		return "display-user.jsp";
	}

	@GetMapping("/delete-user")
	public String deleteUser(@RequestParam("user_id")int userId) {
		userService.deleteUser(userId);
		return "redirect:display-user";
	}
	@GetMapping("/update-user")
	public String  editUser(@RequestParam("user_id") int userId,Model model) {
		User user=userService.findUser(userId);
		model.addAttribute("user",user);
		return "update-user.jsp";
	}
	
	@PostMapping("/update-user")
	public String finalUpdateUser(@ModelAttribute User user) {
		userService.finalUpdateUser(user);
		return "redirect:display-user";
	}
}
