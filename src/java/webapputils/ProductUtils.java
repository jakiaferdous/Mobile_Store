/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webapputils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import webappbean.Product;

/**
 *
 * @author Admin
 */
public class ProductUtils {
      public static List<Product> getProducts(){
        List<Product> inventory = new ArrayList<>();
        
        inventory.add(new Product("Iphone","3s",2, 699));
       
        return inventory;
        
    }
    public static Product getProductByPname(String pname) {
        Product product = null;
        List<Product>products = getProducts();
        for (Product b : products) {
            if (b.getPname().equals(pname)) {
                product = b;
                break;
            }    
        }
        return product;
    }
    
}
