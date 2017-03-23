

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <link rel="stylesheet" href="include/styles/style.css">
          
        
        <script src="include/js/jquery-2.1.4.js"></script>
        <script src="include/js/bootstrap.js"></script>
        <jsp:include page="header.jsp"/>
       
        <title>Welcome to Mobile Phone!</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div style="margin-right:-800px" class="container">
            <c:if test="${requestScope.login_error != null}">
               <div class="alert alert-danger">
                   <span>${requestScope.login_error}</span>
               </div>
            </c:if>
        <form class="form-control-static" action="login" method="post">
            <div class="form-group">
                <label style="color:yellow"><h4>USERNAME:</h4> </label>
                <input type="text" name="username"/>
            </div>
            <div class ="form-group">
                <label style="color:yellow"><h4>PASSWORD:</h4> </label>
                <input type="password" name="password"/>
            </div>
                <input type="submit" value="login">
        </form>
            <%--  <p><b><a href="information.jsp" style  ="color: yellow"><h4> Information</h4> </font> </a></b></p> --%>
            <p style="color:yellow"><b>Don't have an account? <a href ="signup.jsp" style="color:white" >Sign up</a></b></p>
        </div>
        
    </body>
</html>

<%@ include file="footer.jsp"%>
