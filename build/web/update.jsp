
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
        
        <link rel="stylesheet" href="include/styles/style1.css">
        <link rel="stylesheet" href="include/styles/navCss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body id="body1" style="text-align: center;">
        
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
       
      </ul>
    </div>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/cs3520"
                           user="root"  password="1234"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
            
            
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
            
        <form action="updatedb.jsp" method="post">
            <table border="0" width="70%">
                <caption>Update Product</caption>
                <tr>
                    <th>Id</th>
                    <th>Product Name</th>
                    <th>Model</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="text" value="${param.id}" name="id"/>
                        <td><input type="text" value="${row.pname}" name="pname"/></td>
                        <td><input type="text" value="${row.model}" name="model"/></td>
                        <td><input type="text" value="${row.quantity}" name="qty"/></td>
                        <td><input type="text" value="${row.price}" name="price"/></td>
                        <td><input type="submit" class="btn btn-sm btn-danger" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            
            <a href="display.jsp">Go to display page</a>
        </form>
        
        
    </body>
</html>