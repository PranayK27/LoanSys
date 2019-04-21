<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>Admin Change Password</title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
</head>

<body><%@ include file = "includes/header.jsp" %>
	<div class="ts-main-content">
<%@ include file = "includes/leftbar.jsp" %><div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					<h2 class="page-title">View Bank</h2>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/loanbanking"
                           user="root"  password="root"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from bank_info
         </sql:query>		
               <table class="table table-hover">
  <caption>LIST OF Added Banks</caption>
                <tr>
                   <th>bank_name</th>
                    <th>HOME LOAN </th>
                    <th>CAR LOAN</th>
                    <th>CORPORATE LOAN</th>
                    <th>EDUCATION LOAN</th>
                </tr>		
               <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.bank_name}"/></td>
                        <td><c:out value="${row.home}"/></td>
                        <td><c:out value="${row.car}"/></td>
                        <td><c:out value="${row.corrporate}"/></td>
                        <td><c:out value="${row.eduction}"/></td>
                        
                    </tr>
                </c:forEach>                             
            </table>
                                        </div>
				</div>
				
		
			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
