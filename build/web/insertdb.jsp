

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>Insert phone</title>
    </head>
    <body>
        <c:if test="${ empty param.pname or empty param.qty}">
            <c:redirect url="insert.jsp" >
                <c:param name="errMsg" value="Please enter product and quantity" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/cs3520"
                           user="root"  password="1234"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product(pname,model,quantity,price) VALUES (?,?,?,?);
            <sql:param value="${param.pname}" />
            <sql:param value="${param.model}" />
            <sql:param value="${param.qty}" />
            <sql:param value="${param.price}" />
        </sql:update>
            
        <c:if test="${result>=1}">
            <font size="5" color='green'> Data inserted successfully.</font>
                
            <c:redirect url="insert.jsp" >
                <c:param name="susMsg" value="Data inserted successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>
