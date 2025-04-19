package com.trycatch.email_statement.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailServiceController {

	@RequestMapping(path = "health",method = RequestMethod.GET)
	public String checkHealth() {
		return "Email Service Service working properly";
	}
}
