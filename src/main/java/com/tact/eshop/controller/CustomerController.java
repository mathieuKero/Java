package com.tact.eshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Customer;
import com.tact.eshop.entity.Product;
import com.tact.eshop.repository.CustomerRepository;
import com.tact.eshop.repository.ProductRepository;

@Controller
@RequestMapping("/user/")
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepo;

/***
 * Fournit les données relatives à un utilisateur
 * @param id id de sélection de l'utilisateur
 * @param model
 * @return le chemin d'accès au fichier ftl
 */
    @RequestMapping("{id}")
    public String show(@PathVariable String id, Model model) {

        Customer customer = customerRepo.findOne(Long.valueOf(id));
        model.addAttribute("customer", customer);
        

        return "user/profil";
    }

    
    
}