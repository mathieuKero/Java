package com.tact.eshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Customer;
import com.tact.eshop.entity.Product;
import com.tact.eshop.repository.CustomerRepository;

@Controller
@RequestMapping("/login/")
public class LoginController {
	
	@Autowired
	private CustomerRepository customerRepo;
	
	/***
	 * Recupère toutes les données utilisateur
	 * @param model
	 * @return le chemin d'acces vers le fichier ftl
	 */
	@RequestMapping("login")
	public String index(Model model) {
		List<Customer> customers = (List<Customer>) customerRepo.findAll();
		model.addAttribute("customers", customers);

		
		return "login/login";
	}
}




