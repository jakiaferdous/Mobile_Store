

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <link rel="stylesheet" href="include/styles/CS3520.css">
        <link rel="stylesheet" href="include/styles/style.css">
        <link rel="stylesheet" href="include/styles/navCss.css">
        
     
        
         <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>

        <script src="include/js/jquery-2.1.4.js"></script>
        <script src="include/js/bootstrap.js"></script>
        <title>Admin</title>
    </head>
    <body id="body2">
       <div class="nav">
      <ul>
        <li class="home"><a href="welcome.jsp">Home</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Users <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="AdminServlet">Admin</a></li>
            <li><a href="insert.jsp">Add phone to table</a></li>
          </ul>
        </li>
        <li class="phone"><a href="phones.jsp">Phones</a></li>
        <li class="about"><a href="information.jsp">About</a></li>
        <li class="about"><a href="logout.jsp">Logout</a></li>
        
       
      </ul>
    </div>
        
         <style>
    #link_bar a { padding:8px; font-weight:bold; float:left; }
    #link_bar a:link { color:red; background-color:white; }
    #link_bar a:visited { color:black; background-color:white; }
    #link_bar a:hover { color:greenyellow; background-color:red; }
    #link_bar a:active { color:white; background-color:white; }
</style>
   
    <center>
  <div id="link_bar">
   <a href="display.jsp">Phone Inventory</a>    
   
   </div>
    </center>
         
        <div class="container">
        <div class="row">
            <div id="content">
            
        <p>User List</p>
        <div class="row"> 
                <div class="col-lg-12">
        <table class="table">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>ID</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items ="${users}">
            <tr>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td>${user.id}</td>
                <td>
                    <a href="AdminServlet?action=delete&username=${user.username}">Delete</a> |
                    <a href="EditServlet?&password=${user.password}&email=${user.email}&id=${user.id}">Edit</a>
                </td>
            </tr>
            </c:forEach>
        </table>
                </div>
        </div>
        <div id="div1" class="form-group">
        <form action="AdminServlet?action=insert" method="post">
            <div class="form-group">
                <img src="include/styles/Add-Male-User-icon.png" alt="" height="80" width="80">
                <label>Username</label>
                <input type="text" name="username">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email">
            </div>
            <div class="form-group">
            <input type="submit" class="btn btn-sm btn-success" id="font01" value="Create New User"/>
            </div>
        </form>
        </div>
        
        </div> 
        </div>
        </div>
    </body>
</html>

<%@ include file="footer.jsp"%>