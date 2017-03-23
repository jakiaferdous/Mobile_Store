/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webappbean.Phone;
import webapputils.PhoneUtils;


@WebServlet(name = "Phone", urlPatterns = {"/PhoneServlet"})
public class PhoneServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        String action = request.getParameter("action");
        if(null !=action && action.equals("delete")){
            //delete user
            System.out.println("Deleting User");
            String username = request.getParameter("username");
                if(null != username){
                    boolean models = PhoneUtils.removePhoneByPhoneName(username);
                 }
        }
        else if (null!=action && action.equals("insert")){
            String pname = request.getParameter("pname");
            String model = request.getParameter("model");
            String quantity = request.getParameter("quantity");
            String price = request.getParameter("price");
            Phone phone = new Phone();
            
            phone.setType(pname);
            phone.setModel(model);
            phone.setPrice(price);
            PhoneUtils.insertPhone(phone);   
        }
        
        else if (null!=action && action.equals("update")){
            String panem = request.getParameter("pname");
            String model = request.getParameter("model");
            String quantity = request.getParameter("quantity");
            String price = request.getParameter("price");
           // int id = Integer.parseInt(request.getParameter("id"));
            
            Phone phone = new Phone();
            
            phone.setType(panem);
            phone.setModel(model);
            phone.setModel(quantity);
            phone.setPrice(price);
           // phone.setId(id);
            
            PhoneUtils.updatePhone(phone);   
        }
        
        List<Phone> phones = PhoneUtils.getPhones();
        request.setAttribute("phones", phones);
        
        this.getServletContext().getRequestDispatcher("/phones.jsp").forward(request, response);
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
