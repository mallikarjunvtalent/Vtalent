package com.userstores.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.userstores.Entity.StoreBean;
import com.userstores.service.StoredService;

@Controller
public class HomeController {
	
	@Autowired
	private StoredService storedService;
	
	@RequestMapping("/")
	public String welcomePage() {
		return "welcome";
	}
	
	@GetMapping("/createStore")
	public String addingPage(@ModelAttribute("storeBean") StoreBean storeBean) {
		return "addpage";
	}
	
	@PostMapping("/saveInTable")
	public String addingPages(@Valid @ModelAttribute("storeBean") StoreBean storeBean,BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("page has error");
			List<ObjectError> allErrors = result.getAllErrors();
			for (ObjectError objectError : allErrors) {
				System.out.println(objectError);
			} 
			return "addpage";
		}
		
		storedService.saveAll(storeBean);
		
		return "redirect:/";
	}
	
	@GetMapping("/findStore")
	public String getStores(Model model) {
		
		List<StoreBean> storeBeans = storedService.getAllStores();
		
		model.addAttribute("storeBeans", storeBeans);
		
		return "listofstores";
	}
	
	@GetMapping("/updateStore")
	public String updateStore(@RequestParam("storeId") int id, Model model) {
		StoreBean storeBean = storedService.updateStore(id);
		model.addAttribute("storeBean", storeBean);
		return "update";
	}
	
	@GetMapping("/deleteStore")
	public String deleteStore(@RequestParam("storeId") int id, Model model) {
		 storedService.deleteStore(id);
		return "redirect:/findStore";
	}
	
	@GetMapping("/deleteStores")
	public String deleteStores(Model model) {
		// storedService.deleteStore(id);
		return "Delete";
	}
}
