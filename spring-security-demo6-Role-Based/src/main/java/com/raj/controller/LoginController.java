package com.raj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
		@GetMapping("showMyLoginPage")
		public String showLoginPage()
		{
			return "custom-login";
		}
		
		@GetMapping("leaders")
		public String showleaders()
		{
			return "leaders/leaders-page";
		}
		

		@GetMapping("systems")
		public String showsystems()
		{
			return "systems/systems-page";
		}
		@GetMapping("/access-denied")
		public String showAcessDenied()
		{
			return "access-denied";
		}
}
