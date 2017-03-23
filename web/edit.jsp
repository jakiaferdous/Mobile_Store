
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <link rel="stylesheet" href="include/styles/style.css">
        <link rel="stylesheet" href="include/styles/navCss.css">
        
        <jsp:include page="header.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body id="body2" style="text-align: center;">
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
        <div class="row">
        <div id="content">
            <div id="div1"> 
                
                
                
         <form action="AdminServlet?action=update" method="post">
            <div class="form-group">
                 <img id="imgUpdate" src="include/styles/update.jpg" alt="" height="150" width="150">
                
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" value="${param.password}">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="${param.email}">
            </div>
            <%--<input type="hidden" name="id" value="${param.id}">--%>
            <div class="form-group">
            <input type="submit" class="btn btn-sm btn-warning" id="font01" value="Update"/>
            </div>
             
        </form>
        </div>
        </div>
        </div>
        </div>
    </body>
</html>

<%@ include file="footer.jsp"%>