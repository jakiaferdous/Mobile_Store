/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webapputils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import webappbean.Phone;

/**
 *
 * @author nk5946
 */
public class PhoneUtils {
    public static boolean insertPhone(Phone phone) throws SQLException{
         Connection connection = null;
            int count = 0;
            Statement stmt = null;
           
             try {
                String dbURL = "jdbc:mysql://localhost:3306/phone";
                String username = "root";
                String password = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AuthUtils.class.getName()).log(Level.SEVERE, null, ex);
                }
                connection = DriverManager.getConnection(
                    dbURL, username, password);
                
                System.out.println("Successful Connection");
                stmt = connection.createStatement();
                String query = "INSERT into phone (panem, model,quantity, price)" +
                        "VALUES ('"+phone.getType() + "','" + phone.getModel() + "','" + phone.getModel() + "','" + phone.getPrice() + "')";
                stmt.executeUpdate(query);
            }catch (Exception e){
            }
            finally{
                 try{
                     stmt.close();
                     connection.close();
                 }
                 catch(Exception e) {
                     e.printStackTrace();}
        return false;
    }
    }
    public static boolean updatePhone(Phone phone) throws SQLException{
         Connection connection = null;
            int count = 0;
            PreparedStatement stmt = null;
            int id = phone.getId();
           
             try {
                String dbURL = "jdbc:mysql://localhost:3306/phone";
                String username = "root";
                String password = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AuthUtils.class.getName()).log(Level.SEVERE, null, ex);
                }
                connection = DriverManager.getConnection(
                    dbURL, username, password);
                
                System.out.println("Successful Connection");
                stmt = connection.prepareStatement("UPDATE phone.user SET pname = ?, model = ?, quantity= ? price = ? ");
                //  stmt.setString(2, phone.getPname());
                stmt.setString(1, phone.getType());
                stmt.setString(2, phone.getModel());
              //  stmt.setString(2, phone.getQuanity());
                stmt.setString(3, phone.getPrice());
               // stmt.setInt(4, phone.getId());
                
                stmt.executeUpdate();
            }catch (Exception e){
            }
            finally{
                 try{
                     stmt.close();
                     connection.close();
                 }
                 catch(Exception e) {
                     e.printStackTrace();}
        return false;
    }
    }
    public static boolean removePhoneByPhoneName(String phone){
        
            Connection connection = null;
            int count = 0;
            Statement stmt = null;
            

             try {
                String dbURL = "jdbc:mysql://localhost:3306/cs3520";
                String username = "root";
                String password = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AuthUtils.class.getName()).log(Level.SEVERE, null, ex);
                }
                connection = DriverManager.getConnection(
                    dbURL, username, password);
                
                System.out.println("Successful Connection");
                stmt = connection.createStatement();
                count = stmt.executeUpdate("Delete From phone "
                        + "where type = '" + phone + " '");
             
    }catch(Exception e){
             e.printStackTrace();}
     finally{
                 try{
                     stmt.close();
                     connection.close();
                 }
                 catch(Exception e) {
                     e.printStackTrace();}
                 
             return count > 0;
    }
    }
    
public static List<Phone> getPhones() throws SQLException{
            List<Phone> phones = new ArrayList<>();
            Statement stmt = null;
            Connection connection = null;
            ResultSet rs;
             try {
                String dbURL = "jdbc:mysql://localhost:3306/cs3520";
                String username = "root";
                String password = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AuthUtils.class.getName()).log(Level.SEVERE, null, ex);
                }
                connection = DriverManager.getConnection(
                    dbURL, username, password);
                
                System.out.println("Successful Connection");
                stmt = connection.createStatement();
                
                rs = stmt.executeQuery("select * from phone");
        
                    while (rs.next())
                    {
                        String t = rs.getString("type");
                        String m = rs.getString("model");
                         String q = rs.getString("quantity");
                        String p = rs.getString("price");
                       // int id = rs.getInt("id");
                        Phone phone = new Phone();
                        
                        phone.setType(t);
                        phone.setModel(m);
                       // phone.setQuantity(q);
                        phone.setPrice(p);
                       
                        
                        phones.add(phone);
                    }
             }catch(Exception e){
             e.printStackTrace();}
     finally{
                 try{
                     stmt.close();
                     connection.close();
                 }
                 catch(Exception e) {
                     e.printStackTrace();}   
             
                    
            return phones;
        }
    
}   
}
