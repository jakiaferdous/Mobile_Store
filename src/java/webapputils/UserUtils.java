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
import webappbean.User;

/**
 *
 * @author nk5946
 */
public class UserUtils {
    
    
    public static boolean insertUser(User user) throws SQLException{
         Connection connection = null;
           // int count = 0;
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
                String query = "INSERT into User (username, password, email)" +
                        "VALUES ('"+user.getUsername() + "','" + user.getPassword() + "','" + user.getEmail() + "')";
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
    public static boolean updateUser(User user) throws SQLException{
         Connection connection = null;
            int count = 0;
            PreparedStatement stmt = null;
            int id = user.getId();
           
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
                stmt = connection.prepareStatement("UPDATE user SET username = ?, password = ?, email = ?, WHERE id=?");
                stmt.setString(1, user.getUsername());
                stmt.setString(2, user.getPassword());
                stmt.setString(3, user.getEmail());
                stmt.setInt(4, user.getId());
                
                
                stmt.executeUpdate("UPDATE user SET username = ?, password = ?, email = ?, WHERE id=?");
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
    public static boolean removeUserByUserName(String uname){
        
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
                count = stmt.executeUpdate("Delete From User "
                        + "where username = '" + uname + " '");
             
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
    
    public static List<User>getUsers()
    {
        return doQuery("select * from user");
    }

    public static User validateUser(String username, String password)
    {
        List<User>users = doQuery("select * from user where "
                + "username='" + username + "' and "
                + "password='" + password +"'"
        );
        return (users.size() == 1) ? users.get(0) : null;
    }
    
    public static List<User> doQuery(String query) {
            List<User> users = new ArrayList<>();
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
                
                rs = stmt.executeQuery(query);
        
                    while (rs.next())
                    {
                        String un = rs.getString("username");
                        String pw = rs.getString("password");
                        String em = rs.getString("email");
                        int id = rs.getInt("id");
                        
                        User user = new User();
                        
                        user.setUsername(un);
                        user.setPassword(pw);
                        user.setEmail(em);
                        user.setId(id);
                        
                        users.add(user);
                        
                        System.out.println(un);
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
             
                    
            return users;
        }
    
}   
}
