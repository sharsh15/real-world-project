package com.trycatch.dashboard_service.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DashboardServiceController {

		@RequestMapping(path = "health",method = RequestMethod.GET)
		public String checkHealth() {
			return "Dashboard Service Service working properly";
		}
	}

