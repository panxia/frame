package com.chunxin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 业务页面视图
 * 
 */
@Controller
public class PageController {
	
	@RequestMapping("chunxin/{url}.html")
	public String page(@PathVariable("url") String url){

		return "chunxin/" + url + ".html";
	}


}
