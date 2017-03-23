
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="include/styles/bootstrap.css">
        <link rel="stylesheet" href="include/styles/bootstrap-theme.css">
        <link rel="stylesheet" href="include/styles/CS3520.css">
         <link rel="stylesheet" href="include/styles/navCss.css">
        <link rel="stylesheet" href="include/styles/style.css">
       
        <jsp:include page="header.jsp"/>

        <script src="include/js/jquery-2.1.4.js"></script>
        <script src="include/js/bootstrap.js"></script>
        <title>Phones</title>
    </head>
    <body id="body3">
        
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
        <li><a href="cart.jsp">View Cart</a></li> 
      </ul>
    </div>
       
       
       
        
               <section>
            <code>
            <h2>iPhone SE</h2>
        </code>
            <code>
                <p>
                    <img src="include/styles/iphnoe se.png" alt=""width="480" height="1200"/>
                
                </p>
                    
                
            </code>
        
           
        </section> 
        <section>
            <code>
            <h2>iPhone 6 S plus</h2>
        </code>
            <code>
                <p>
                    <img src="include/styles/iphone 6 s plus.png" alt=""width="480" height="1200"/>
                   
                
                </p>
                    
                
            </code>
        
           
        </section>
        <section>
            <code>
            <h2>iPhone 7 plus</h2>
        </code>
            <code>
                <p>
                    <img src="include/styles/iphone 7 plus.png" alt=""width="480" height="1200"/>
                    
                </p>
                    
                
            </code>
        
           
        </section> 
        <br>      
          
        </div> 
        </div>
    </body>
</html>

<%@ include file="footer.jsp"%>