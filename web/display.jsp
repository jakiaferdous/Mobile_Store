<%-- 
    Document   : displaydb
    Created on : Mar 6, 2017, 1:49:40 AM
    Author     : Admin
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <jsp:include page="header.jsp"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
        
         <link rel="stylesheet" href="include/styles/navCss.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
        
    </head>
    <body>
        
        <div class="nav">
      <ul>
        <li class="home"><a href="welcome.jsp">Home</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Users <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="AdminServlet">Admins</a></li>
           
          </ul>
        </li>
        <li class="phone"><a href="phones.jsp">Phones</a></li>
        <li class="about"><a href="information.jsp">About</a></li>
         <li class="about"><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </div>
       

 <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/cs3520"
                           user="root"  password="1234"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product;
        </sql:query>
    <center>
        <form>
            
         <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}

        th {
            background-color: #4CAF50;
            color: white;
        }
        </style>    

        
            <table border="1" width="40%">
                
                <caption><center><h1 style="font-size:300%;">Product List</h1></center></caption> 
               
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Model</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    
                    <th colspan="5">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.id}"/></td>
                        <td><c:out value="${row.pname}"/></td>
                        <td><c:out value="${row.model}"/></td>
                        <td><c:out value="${row.quantity}"/></td>
                        <td><c:out value="${row.price}"/></td>
                        <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Are you sure you want to delete?','deletedb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                        <td><a href="cart.jsp?id=<c:out value="${row.id}"/>">Add to card</a> </td>
 
                    </tr>
                </c:forEach>
            </table>
        </form>
        <%--<a href="index.jsp">Go Home</a>--%>
       <a href="phones.jsp">Go Home</a>
      
       <a href="insert.jsp"><h2> <mark>Add phone</mark></h2></a>
    </center>
 
       
</body>
</html>
