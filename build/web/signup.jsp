

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <jsp:include page="header.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
         <div class="container">
            <div class="row">        
                <div id="content_1">
          <div id="div1" class="form-group">
        <form action="RegisterServlet?action=register" method="post">
            <div class="form-group">
                 
                 <img src="include/styles/userimage.PNG" alt="" height="150" width="150">
            </div>
            <div class="form-group">
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
            <input type="submit" value="Register"/>
            </div>
        </form>
          </div>
                </div>
            </div>
          </div>
    </body>
</html>

<%@ include file="footer.jsp"%>