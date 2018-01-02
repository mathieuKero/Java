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
@RequestMapping("/product/")
public class ProductController {

    @Autowired
    private ProductRepository productRepo;
    
    @Autowired
    private CustomerRepository customerRepo;

    /***
     * Permet d'afficher l'ensemble des produits 
     * @param modelProduct 
     * @return url d'acces 
     */
    @RequestMapping("index") //?usr={id}
    public String index(Model modelProduct) {

    	List<Product> products = (List<Product>) productRepo.findAll();
    	modelProduct.addAttribute("products", products);
        
        return "product/index";
    }

    /***
     * Permet d'afficher un produit particulier en fonction de son ID -> selection un seul produit
     * @param id fournit lors de la requête http
     * @param model
     * @return url d'accès 
     */
    @RequestMapping("{id}")
    public String show(@PathVariable String id, Model model) {

        Product product = productRepo.findOne(Long.valueOf(id));
        model.addAttribute("product", product);

        return "product/show";
    }
    
}
