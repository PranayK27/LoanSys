<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <html>
    <head>
        <title>INSERT BANK</title>
    </head>
    <body>
        <c:if test="${ empty param.bname}">
            <c:redirect url="add_bank.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
         </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/loanbanking"
                           user="root"  password="root"/>
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO `bank_info` (`bank_name`,`home`,`car`,`corrporate`,`eduction`) VALUES (?,?,?,?,?);
            <sql:param value="${param.bname}" />
            <sql:param value="${param.home}" />
            <sql:param value="${param.car}" />
            <sql:param value="${param.corp}" />
             <sql:param value="${param.edu}" />

                       
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="add_bank.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>