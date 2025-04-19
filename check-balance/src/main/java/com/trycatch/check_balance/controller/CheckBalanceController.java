package com.trycatch.check_balance.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CheckBalanceController {

	@RequestMapping(path = "health",method = RequestMethod.GET)
	public String checkHealth() {
		return "Check Balance Service working properly";
	}
}
