package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("toHello")
	public String toHello(Model model) {
		User user = new User();
		user.setId("AT001");
		user.setName("������С�һ�");
		model.addAttribute("title", "�ƿ�������������");
		model.addAttribute("user", user);
		return "index";
	}
}
