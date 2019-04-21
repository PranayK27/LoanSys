<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Lonesys</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"> 

<script>  
function validateform(){  
var name=document.myform.fullname.value;  
var password=document.myform.password.value;  
  
if (fullname==null || fullname==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  
</script>  


</head>
<body>        
<!--Header-->

<%@ include file = "includes/header.jsp" %>

<!-- /Header --> 
<div class="login-page bk-img" style="background-image: url(admin/img/login-bg.jpg);">
<div class="container">
    <div  class="row">
       <div class="col-md-3"></div>
      <div class="col-md-6">
        <h3></h3>
        <div class="contact_form gray-bg">
          <form name="myform" action="add_customer.jsp" method="post">
            <div class="form-group">
              <label class="control-label">Full Name <span>*</span></label>
              <input type="text"  required name="fullname" class="form-control white_bg" placeholder="Full Name" id="fullname">
            </div>
            <div class="form-group">
              <label class="control-label">Email Address <span>*</span></label>
              <input type="email" name="email" class="form-control white_bg" placeholder="example abc@gmail.com" id="emailaddress" required>
            </div>
            <div class="form-group">
              <label class="control-label">Phone Number <span>*</span></label>
              <input type="number" required maxlength="10" name="contactno" class="form-control white_bg" placeholder="982...." id="phonenumber">
            </div>
            <div class="form-group">
              <label class="control-label">Password <span>*</span></label>
            <input type="password" name="password" class="form-control white_bg" placeholder="Password" id="password" required>
            </div>
            <div class="form-group">
              <label class="control-label">Profession<span>*</span></label>
            <select class="form-control white_bg" name="profession">
              <option>Employed</option>
              <option>Self Employed (P)</option>
              <option>Self Employed (NP)</option>
            </select> 
            </div>

            <div class="form-group">
              <button class="btn" type="submit" name="send" type="submit">Register <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
            <p>Already A Member?<a href="login.jsp">Login</a></p>
          </form>
        </div>
      </div>
      <div class="col-md-3"></div>
    </div>
  </div>
</div>

<%@ include file = "includes/footer.jsp" %>
<!-- /Footer--> 
<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 
<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 07:22:11 GMT -->
</html>