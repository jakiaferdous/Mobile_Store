

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <jsp:include page="header.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry</title>
    </head>
    <body>
        <div class="container">
            <div class="row">        
                <div id="content_1">  
                    <p><font color="red">Sorry, you must be an admin to access this page</font></p>
        <a href="welcome.jsp">Back</a>
                </div>
            </div>
        </div>
    </body>
</html>

<%@ include file="footer.jsp"%>
