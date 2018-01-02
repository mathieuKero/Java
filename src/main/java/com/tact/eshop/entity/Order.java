package com.tact.eshop.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Service;

/** Class for Order POJO of eShop project. */
@Entity
@Service
@Table(name="shop_order")
public class Order extends EntityBase {

    @Column
    private Float total;

    @ManyToOne
    private Customer customer;

    @OneToMany(mappedBy="order", cascade=CascadeType.ALL)
    private List<OrderProduct> products;

    public Order() {
        this.products = new ArrayList<OrderProduct>();
    }

    /**
     * @return the customer
     */
    public Customer getCustomer() {
        return this.customer;
    }

    /**
     * @param customer the customer to set
     */
    public Order setCustomer(Customer customer) {
        this.customer = customer;

        // Bidirectional check
        if (customer != null && !customer.getOrders().contains(this)) {
            customer.addOrder(this);
        }

        return this;
    }

    /**
     * @return the total
     */
    public Float getTotal() {
        return this.total;
    }

    public Order addProduct(Product product, int qt) {
        OrderProduct item = new OrderProduct(this, product, qt);
        this.products.add(item);

        return this;
    }

    public List<OrderProduct> getOrderedProduct() {
        return this.products;
    }

    public void removeProduct(Product product, int qt) {
        OrderProduct finded = null;
        for (OrderProduct orderProduct : this.products) {
            if (orderProduct.getProduct().equals(product)) {
                finded = orderProduct;
            }
        }

        finded.setQuantity(finded.getQuantity() - qt);
        if (finded.getQuantity() <= 0) {
            this.products.remove(finded);
        }
    }

}
