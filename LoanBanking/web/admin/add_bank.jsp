<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>ADD BANK</title>

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

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Add Bank</h2>

						<div class="row">
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">FILL THE FILED</div>
									<div class="panel-body">
										<form method="post" action="add_bank_db.jsp" class="form-horizontal" onSubmit="return valid();">
                                                                                        <div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">BANK NAME</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="bname" id="movie_type" required>
												</div>
											</div>
                                                                                     <div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">HOME LOAN</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="home" id="movie_type" required>
												</div>
											</div>
                                                                                     
                                                                                    <div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">CAR LOAN</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="car" id="movie_type" required>
												</div>
											</div>
                                                                                  
                                                                                       <div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">CORPORATE LOAN</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="corp" id="movie_type" required>
												</div>
											</div>
                                
                                                                                    <div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">EDUCATION LOAN</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="edu" id="movie_type" required>
												</div>
											</div>
                                
											<div class="hr-dashed"></div>
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-4">
									                        <button class="btn btn-primary" name="submit" type="submit">Save changes</button>
												</div>
											</div>
                                                                                    
                                                                                    
										</form>

									</div>
								</div>
							</div>
							
						</div>
						
					

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
