

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
        
        <link rel="stylesheet" href="include/styles/style1.css">
         <link rel="stylesheet" href="include/styles/navCss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        
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
          

          <div class="container">
        <div class="row">
         <div id="content">
             <div><h1>Welcome ${sessionScope.user.username} to Mobile Phone!</h1>
        <a href="AdminServlet">Administrator</a> &nbsp; &nbsp; &nbsp;
        <a href="PhoneServlet">Our Phones</a>
          </div>
     
        <section>
            <code>
            <h2>This month's hot deal</h2>
        </code>
            <code>
                <p>
                Grab an iphone today and get extra 10% off.
                
                The discount applies to purchases made before mid-night 03/31/2017
                pacific time. So hurry up and get yours while we still have it in stock.
                </p>
                    
                
            </code>
        
           
        </section>
        <section>
            <code>
            <h2>Credit Card</h2>
        </code>
            <code>
                <p>
               If you open a credit card you will get extra 25% OFF !!!
                </p>
                    
                
            </code>
        
           
        </section>
        <section>
            <code>
            <h2>All time deal</h2>
        </code>
            <code>
                <p>
                If you download our app,then you will get extra 15% OFF, on top of all discounts.The link is down below.
                <a href="#">Mobile Phone</a>
                </p>
                    
                
            </code>
        
           
        </section>
       
        
         </div>
        </div>
          </div>
    </body>
    </body>
</html>

<%@ include file="footer.jsp"%>
