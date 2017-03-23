/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webappbean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author SONY
 */
public class Cart implements Serializable {
    
    private List<Product>products;

    public Cart() {
        products = new ArrayList<Product>();
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
    
    public void addProduct(Product product) {
        this.products.add(product);
    }
    
    public boolean removeProduct(String pname) {
        boolean found = false;
        Product product = null;
        for (Product b : products) {
            if (b.getPname().equals(pname)) {
                found = true;
                product = b;
                break;
            }
        }
        if (found && product != null) product.remove(product);
        return found;
    }
    
}
