package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.web.binding.Product;

@Controller
public class ProductController {
	@GetMapping("/")			//get request is used to display the form
	public String getProductForm(Model model)  {	//Model is used to send the data from Controller to UI
		Product proObj=new Product();
		model.addAttribute("product", proObj);
		return "index";
		
	}
	@PostMapping("/product")
	
	public String handleFormSubmit(Product product, Model model) {
		System.out.println(product);
		model.addAttribute("msg", "Product Saved Successfully");	//success msg
		return "success";
	}
}
