

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
         <li class="about"><a href="logout.jsp">Logout</a></li>
       
      </ul>
    </div>
        
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
        
        <form action="insertdb.jsp" method="post">
            <table border="0" width="70%">
                <thead>
                    <tr>
                        <th colspan="2">Add Phone</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Model</label></td>
                        <td><input type="text" name="model"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/></td>
                    </tr>
                    <tr>
                        <td><label>Price</label></td>
                        <td><input type="text" name="price"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn btn-success"   value="Save" /></td>
                        <td><input type="reset" class="btn btn-info" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="phones.jsp">Go Home</a>
        </c:if></font>
        
        <a href="display.jsp">Go to display page</a>
 
    </body>
</html>
