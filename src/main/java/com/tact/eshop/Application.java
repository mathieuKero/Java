package com.tact.eshop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.tact.eshop.entity.Customer;
import com.tact.eshop.entity.Order;
import com.tact.eshop.entity.Product;
import com.tact.eshop.repository.CustomerRepository;
import com.tact.eshop.repository.OrderRepository;
import com.tact.eshop.repository.ProductRepository;

@SpringBootApplication(scanBasePackages={
"com.tact.eshop.controller" , "com.tact.eshop.entity"})
public class Application {

    private static final Logger log =
            LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    public CommandLineRunner addFixtures(
            CustomerRepository repoCutomer,
            ProductRepository repoProduct,
            OrderRepository repoOrder
            ) {
        return (args) -> {
            repoCutomer.deleteAll();
            repoProduct.deleteAll();
            repoOrder.deleteAll();

            Customer customer1 = new Customer("Mickael", "Gaillard", "0606060606", "666 heel's street", 66666, "Demon's lands", "MG", "not24get");
            Customer customer2 = new Customer("Jack", "Bauer", "0606060606", "666 heel's street", 66666, "Demon's lands", "JB", "not24get");
            
            Order order = new Order();
            Order order2 = new Order();
            customer1.addOrder(order);
            customer2.addOrder(order2);
            

            // Add customers.
            log.info("Add Customers fixtures...");
            repoCutomer.save(customer1);
            repoCutomer.save(customer2);
            repoCutomer.save(new Customer("Chloe", "O'Brian", "0606060606", "666 heel's street", 66666, "Demon's lands", "CO", "not24get"));
            repoCutomer.save(new Customer("Kim", "Bauer", "0606060606", "666 heel's street", 66666, "Demon's lands", "KB", "not24get"));
            repoCutomer.save(new Customer("David", "Palmer", "0606060606", "666 heel's street", 66666, "Demon's lands", "DP", "not24get"));
            repoCutomer.save(new Customer("Michelle", "Dessler", "0606060606", "666 heel's street", 66666, "Demon's lands", "MD", "not24get"));



            // Add products.
            log.info("Add Products fixtures...");

            Product product = new Product("Bmx");
            Product product2 = new Product("T20");
            Product product3 = new Product("Voltic");
            Product product4 = new Product("Rhino");
            
            repoProduct.save(product);
            repoProduct.save(product2);
            repoProduct.save(product3);
            repoProduct.save(product4);

            order.addProduct(product, 2);
            order2.addProduct(product4, 5);            
            repoOrder.save(order);
            repoOrder.save(order2);
            

            int i = 0;
            i++;
        };
    }
}
