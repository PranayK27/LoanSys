  <%@page import="fusioncharts.FusionCharts" %>

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
 <script src="scripts/fusioncharts.js"></script>
 
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
<script type="text/javascript">
function valid()
{
if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
{
alert("New Password and Confirm Password Field do not match  !!");
document.chngpwd.confirmpassword.focus();
return false;
}
return true;
}
</script>
  <style>
      table, th, td {
    border: 1px solid black;
    width: 70%; height: 47px;
}

      
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>


</head>

<body>
<%@ include file = "includes/header.jsp" %>
	<div class="ts-main-content">
<%@ include file = "includes/leftbar.jsp" %>
		<div class="content-wrapper">
			<div class="container-fluid">
                            <h1>Education Loans</h1>
                            <h2 style="color: red;">education loans:  most important points you should know about</h2>
                            <p>You generally take a education loan for either buying a house/flat or a plot of land for construction of a house, or renovation, extension and repairs to your existing house.
                            </p>
                            <h2>How much loan am I eligible for?</h2>
                            <p>Before you start the education loan process, determine your total eligibility, which will mainly depend on your repaying capacity. Your repayment capacity is based on your monthly disposable/surplus income, which, in turn, is based on factors such as total monthly income/surplus less monthly expenses, and other factors like spouse's income, assets, liabilities, stability of income, etc.

The bank has to make sure that you're able to repay the loan on time. The higher the monthly disposable income, the higher will be the loan amount you will be eligible for. Typically, a bank assumes that about 50% of your monthly disposable/surplus income is available for repayment. The tenure and interest rate will also determine the loan amount. Further, the banks generally fix an upper age limit for home loan applicants, which could impact one's eligibility.</p>                                                                     
                               
<h1> Home Loan Interest Chart</h1>
     <div id="chart"></div>
       <table style="text-align: center;">
        
        <%
            FusionCharts columnChart= new FusionCharts(
            "column2d",// chartType
                        "chart1",// chartId
                        "600","400",// chartWidth, chartHeight
                        "chart",// chartContainer
                        "json",// dataFormat
                        "{   \"chart\": {  \"caption\": "
                                + "\"Loan Interest Chart \",      "
                                + "             \"subCaption\": \"Banking \","
                                + "                   \"xAxisName\": \"Banks\",  "
                                + "                 \"yAxisName\": \"Interst (INR)\","
                                + "                   \"numberPrefix\": \"INR\", "
                                + "                  \"paletteColors\": \"#0075c2\", "
                                + "                  \"bgColor\": \"#ffffff\", "
                                + "                  \"borderAlpha\": \"20\","
                                + "                   \"canvasBorderAlpha\": \"0\",                  "
                                + "                \"usePlotGradientColor\": \"0\", "
                                + "                  \"plotBorderAlpha\": \"10\",  "
                                + "                 \"placeValuesInside\": \"1\",      "
                                + "             \"rotatevalues\": \"1\",    "
                                + "               \"valueFontColor\": \"#ffffff\", "
                                + "                  \"showXAxisLine\": \"1\",   "
                                + "                \"xAxisLineColor\": \"#999999\","
                                + "                   \"divlineColor\": \"#999999\","
                                + "                   \"divLineIsDashed\": \"1\", "
                                + "                  \"showAlternateHGridColor\": \"0\","
                                + "                   \"subcaptionFontSize\": \"14\","
                                + "                   \"subcaptionFontBold\": \"0\"    "
                                + "           },               \"data\": [{          "
                                + "         \"label\": \"SBI\", "
                                + "                  \"value\": \"420000\"  "
                                 + "             },"
                                + " {                   \"label\": \"HDFC\",  "
                                + "                 \"value\": \"510000\"  "
                                + "             },"
                             
                                + "{     \"label\": \"ICICI\",       "
                                + "      \"value\": \"900000\" },"
                                + "     { \"label\": \"BOI\",             "
                                + "      \"value\": \"730000\"         "
                                + "      }] }"
                    );
           
            %>
<!--    Step 5: Render the chart    -->            
            <%=columnChart.render()%>
    </table>
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
