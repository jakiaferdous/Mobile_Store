

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/css/bootstrap.css">
        <link rel="stylesheet" href="include/css/bootstrap-theme.css">
        <script src="include/js/jquery-2.1.4.js"></script>
        <script src="include/js/bootstrap.js"></script>
        <link rel="stylesheet" href="include/styles/navCss.css">
        
        
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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Shopping Cart</title>
       
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
            
          </ul>
        </li>
        <li class="phone"><a href="phones.jsp">Phones</a></li>
        <li class="about"><a href="information.jsp">About</a></li>
         <li class="about"><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </div>
        <div class="container">
        <h1>Shopping Cart</h1>
        <table class="table">
            <tr>
                <th>Product name</th>
                <th>Model</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
            <c:forEach var="product" items="${cart.products}">
                <tr>
                    <td>${product.pname}</td>
                    <td>${product.model}</td>
                    <td>${product.quantity}</td>
                     <td>${product.price}</td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
    </header>
</html>

</html>
