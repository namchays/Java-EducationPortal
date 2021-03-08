/*
*	user: nam
*	date: Feb 28, 2021
*/

package edu.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import edu.fa.model.Fresher;
import edu.fa.service.LoginService;
import jdk.internal.jshell.tool.resources.l10n;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "login")
	public String ShowLogin(Model model) {
		model.addAttribute("fresher", new Fresher());
		return "login";
	}
	@RequestMapping(value = "dashboard")
	public String login(@ModelAttribute("fresher") Fresher fresher, Model model) {
		if(loginService.login(fresher)) {
			model.addAttribute("fresher",fresher);
			return "dashboard";
		}else {
			model.addAttribute("error", true);
			return "redirect:login";
		}
	
	}
	
	
}
