<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<%
    
    
    
    String name=request.getParameter("username");
        String pass=request.getParameter("password");
    
    try{ 
    Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/loanbanking";
  Connection con=DriverManager.getConnection(url,"root","");
  PreparedStatement pst=con.prepareStatement("select *from login WHERE email=? and password=?");
  pst.setString(1,name);
  pst.setString(2,pass);
  ResultSet rs=pst.executeQuery();
  if(rs.next())
        {
            
            session.setAttribute("user", rs.getString(1));
            session.setAttribute("email", name);

            //response.sendRedirect("index.jsp");
            //out.println("login success");
        }
        else
  {
             response.sendRedirect("../login.jsp");

  }

  
    }catch(Exception e)
    
    
    {}
    
  
%>


<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>Banking Details</title>

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

<body>
<%@ include file = "includes/header.jsp" %>
	<div class="ts-main-content">
            
<%@ include file = "includes/leftbar.jsp" %>
		<div class="content-wrapper">
			<div class="container-fluid">
				
                            <div class="container">
    <div class="row">
      <div class="col-sm-4">
          <a href="homeloan.jsp"><h1 class="well" style="color: white;background: blue;text-align: center;">Home Loan</h1></a>
      </div>
       <div class="col-sm-4">
           <a href="bikeloan.jsp"><h1 class="well" style="color: white;background: green;text-align: center;">Bike Loan</h1></a>
      </div>
       <div class="col-sm-4">
         <a href="carloan.jsp"> <h1 class="well" style="color: white;background: orange;text-align: center;">Car Loan</h1></a>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
          <a href="educationloan.jsp"><h1 class="well" style="color: white;background: red;text-align: center;">Education Loan</h1></a>
      </div>
       <div class="col-sm-4">
       <a href="propertyloan.jsp"><h1 class="well" style="color: white;background: green;text-align: center;">Property Loan</h1></a>
      </div>
       <div class="col-sm-4">
       <a href="companyloan.jsp"><h1 class="well" style="color: white;background: blue;text-align: center;">Companey Loan</h1></a>
      </div>
        <h1>Advantages & Disadvantages of a Bank Loan</h1>
        <p>Whether you are planning to start a business, buy inventory for an existing one or expand operations, you probably need a substantial amount of money. If you don't have the money lying around, you'll need financing, and one of your financing options is to secure a bank loan. These loans offer certain tax breaks and have lower interest rates compared to credit cards and overdrafts. However, you must meet a range of loan requirements, and the burden of repayment can wear you down.
            </p>
            <h3>flexibility:</h3>
            <p> With bank loans, you only need to worry about making your regular installment payments on time. This is an advantage over overdrafts, where you must pay the full amount when the bank demands it. In addition, banks don't usually monitor how you use your loan as long as you make your payments on time, so you can invest it however you deem fit.</p>
            <h3>Retained Profits:</h3>
            <p> While businesses that issue equity to raise capital often give a percentage of their profits to shareholders, banks require borrowers to pay only the principal and interest amount on a loan. As such, you will retain all your business profits.</p>
            <h3>Tax Benefits:</h3>
            <p>When you use a bank loan for business reasons, the interest you pay on the loan is a tax-deductible expense. For example, if you are paying a 5 percent interest rate on a $30,000 loan, then your yearly interest is deductible on your 1040 Schedule C tax form.</p>
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
