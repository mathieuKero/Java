package com.tact.eshop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tact.eshop.entity.Customer;
import com.tact.eshop.entity.Order;
import com.tact.eshop.entity.OrderProduct;
import com.tact.eshop.repository.CustomerRepository;
import com.tact.eshop.repository.OrderRepository;

@Controller
@RequestMapping("/order/")
public class OrderContoller {
	
    @Autowired
    private OrderRepository orderRepo;

    @Autowired
    private CustomerRepository customerRepo;
    
    /***
     * Fournit les données relatives à un order
     * @param id id de sélection de l'order
     * @param model
     * @return retourne l'url d'acces au fichier ftl
     */
    @RequestMapping("{id}")
    public String my(@PathVariable String id, Model model) {

        Order orderTest = orderRepo.findOne(Long.valueOf(id));
        
        
    	List<OrderProduct> orders = (List<OrderProduct>) orderTest.getOrderedProduct();
    	
    	ArrayList<Float> amount = new ArrayList<Float>();
    	
    	/***
    	 * attribue à tout les produit la somme de ceux-ci avec leur quantitée 
    	 */
    	for (OrderProduct order : orders) {
        	Float amountProduct = order.getTotal();
        	amount.add(amountProduct);
		}

    	model.addAttribute("orders", orders);
    	model.addAttribute("amount", amount);
    	
    	
    	return "order/my";
    }
    
    
    @RequestMapping("index")
    public String index(Model model) {
    	
		List<Customer> customers = (List<Customer>) customerRepo.findAll();
		model.addAttribute("customers", customers);

        
        List<Order> orderList = (List<Order>) orderRepo.findAll();

    	model.addAttribute("orders", orderList);

    	
    	
    	return "order/index";
    }
    
    
    
}
