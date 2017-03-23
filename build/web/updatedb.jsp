

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update database</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/cs3520"
                           user="root"  password="1234"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE product SET pname = ?,model=?, quantity=?, price=? WHERE id='${param.id}'
            <sql:param value="${param.pname}" />
            <sql:param value="${param.model}" />
            <sql:param value="${param.qty}" />
            <sql:param value="${param.price}" />
        </sql:update>
            
      <c:if test="${count>=1}">
          <font size="5" color='green'>Data is updated successfully.</font>  
           <c:redirect url="display.jsp">                  
                <c:param name="susMsg" value="Data is updated successfully." />
            </c:redirect> 
       </c:if>

     <a href="display.jsp">Go back to display</a>  
            
    </body>
</html>






