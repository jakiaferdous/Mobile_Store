/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webappbean.User;
import webapputils.UserUtils;
import webapputils.AuthUtils;


@WebServlet(name = "AdminServlet", urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        String action = request.getParameter("action");
        if(null !=action && action.equals("delete")){
            //delete user
            System.out.println("Deleting User");
            String username = request.getParameter("username");
                if(null != username){
                    boolean status = UserUtils.removeUserByUserName(username);
                 }
        }
        else if (null!=action && action.equals("insert")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            if(user.getUsername() != null && user.getPassword() != null && user.getEmail() != null)
            {
                UserUtils.insertUser(user);
            }   
            
        }
        
        else if (null!=action && action.equals("update")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
           
            int id = Integer.parseInt(request.getParameter("id"));
            
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setId(id);
            
            UserUtils.updateUser(user);   
        }
        
        List<User> users = UserUtils.getUsers();
        request.setAttribute("users", users);
        String url = "";
        
        User user = (User) request.getSession().getAttribute("user");
        if(user.getUsername().equals("admin") && user.getPassword().equals("admin"))
        {
            url = "/admin.jsp";
        }
        else if(!user.getUsername().equals("admin"))
        {
            url = "/sorryadmin.jsp";
        }
        this.getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
