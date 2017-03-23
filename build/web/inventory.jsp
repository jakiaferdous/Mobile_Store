
<%@page import="Servlet.InventoryServlet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <header>
    <head>
        <jsp:include page="header.jsp"/>
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <jsp:include page="header.jsp"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="include/css/bootstrap.css">
        <link rel="stylesheet" href="include/css/bootstrap-theme.css">
        <link rel="stylesheet" href="include/css/3520.css">
        <script src="include/js/jquery-2.1.4.js"></script>
        <script src="include/js/bootstrap.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Inventory</title>
    </head>
    <body>
        <%--NAVIGATION--%>
            
        <div class="nav">
      <ul>
        <li class="home"><a href="welcome.jsp">Home</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Users <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="AdminServlet">Admins</a></li>
            <li><a href="edit.jsp">Edit User</a></li>
          </ul>
        </li>
           
        <li><a href="cart.jsp">View Cart</a></li>   
        <li class="phone"><a href="phones.jsp">Phones</a></li>
        <li class="about"><a href="information.jsp">About</a></li>
        <li class="about"><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </div>
        
        <div class="container-fluid">
            <div class="row">          
                <div class="col-lg-12">
                    <h1>Inventory</h1> 
                </div>         
            </div>          
            <div class="row">
                <div class="col-lg-12">
                    <table class="table">
                        <tr>
                            <th>Product name</th>
                            <th>Model</th>
                            <th>Quantity</th>
                            <th>Price</th>
                        </tr>
                        <c:forEach var="product" items="${requestScope.display}" varStatus="status">
                            <tr class="${status.index%2 == 0? 'evenrow' : ''}">
                                <td>${product.pname}</td>
                                <td>${product.model}</td>
                                <td>${product.quantity}</td>
                                 <td>${product.price}</td>
                               
                                <td>
                                    <form action="InventoryServlet" method="post">
                                        <input type="hidden" name="action" value="add">
                                        <input type="hidden" name="productCode" value="${product.pname}">
                                        <input type="submit" value="Add to Cart">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
  </header>

</html>
    
                     