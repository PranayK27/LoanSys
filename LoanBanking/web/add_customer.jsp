<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <html>
    <head>
        <title>JINSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.fullname or empty param.email}">
            <c:redirect url="home.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
         </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/loanbanking"
                           user="root"  password=""/>
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO `login` (`full_name`, `email`, `ph_no`, `password`, `profession`) VALUES (?,?,?,?,?);
            <sql:param value="${param.fullname}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.contactno}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.profession}" />
            
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="home.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>