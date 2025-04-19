package com.trycatch.login_service.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginServiceController {
	
	@RequestMapping(path = "health",method = RequestMethod.GET)
	public String checkHealth() {
		return "Login Service working properly";
	}

}
