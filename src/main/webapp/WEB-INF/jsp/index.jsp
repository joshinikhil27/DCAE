<!DOCTYPE html>
<html lang="en" ng-app="App">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title ng-bind="'Portal : ' + $state.current.data.pageTitle"></title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
	<link href="resources/css/sdnc_style.css" rel="stylesheet">

<!--     <link href="https://cdnjs.cloudflare.com/ajax/libs/nvd3/1.8.6/nv.d3.css" rel="stylesheet"> -->
    <link href="resources/dist/css/nv.d3.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!--     <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->
	
    <!-- <script src = "https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.10/angular.min.js"></script> -->
    <script src = "resources/dist/ang-js/angular.min.js"></script>
    <script src="resources/js/dirPagination.js"></script>
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 	<script src="http://d3js.org/d3.v3.js"></script> -->
	<script src="resources/dist/d3-js/d3.v3.js"></script>
<!-- 	<script type='text/javascript' src="http://labratrevenge.com/d3-tip/javascripts/d3.tip.v0.6.3.js"> </script> -->
	<script type='text/javascript' src="resources/dist/d3-js/d3.tip.v0.6.3.js"> </script>
	<!-- <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/nvd3/1.8.6/nv.d3.js"> </script> -->
	<script type='text/javascript' src="resources/dist/d3-js/nv.d3.js"> </script>
	<!-- <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/angularjs-nvd3-directives/0.0.8/angularjs-nvd3-directives.js"> </script> -->
    <script type='text/javascript' src="resources/dist/d3-js/angularjs-nvd3-directives.js"> </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
	<script src="resources/dist/js/moment.js"></script>
    <script src="resources/js/app.js"></script>
    <script src="resources/js/router.js"></script>
    <script src="resources/controllers/dashboard.js"></script>
    <script src="resources/controllers/persistCtrl.js"></script>
    <script src="resources/controllers/summaryCtrl.js"></script>
    <script src="resources/controllers/importVNFCtrl.js"></script>
    
    <style>
      .symbol {
	    font-family: FontAwesome;
	    font-size: 16px;
	  }
    </style>
</head>
<body>
    <div id="wrapper" class="container">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color:#fff;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">
                	<img class="float-left" alt="" width="150px" src="resources/images/logo_onap_2017.png">
                	<!-- <span class="header-text">SDNC Pretest</span> -->
                </a>
                <a href="index.html" class="navbar-brand">
                	<img alt="" src="resources/images/techM.jpg" style="position: absolute; right: 0; width: 200px;height:40px;margin-top : -10px;margin-left:11px;">
<!--                   <div class="brand-text brand-big hidden-lg-down" style="color:#ffffff;"><span>ECOMP </span><strong>PORTAL</strong></div> -->
                </a>
            </div>            
            <!-- /.navbar-header -->
            <!-- Dashboard header notification icon here -->
            <!-- /.navbar-top-links -->
			<div class="row user-sec">
				<aside class="user-info pull-right">
					<div class="dropdown">
					  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Welcome User
					  <span class="caret"></span></button>
					  <ul class="dropdown-menu">
					    <li><a href="#">Logout</a></li>
					  </ul>
					</div>

				</aside>
			</div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a ui-sref="home"><img alt="" src="resources/images/Dashboard.png"> Home</a>
                        </li>
                         <li>
                            <a href=""><img alt="" src="resources/images/DCAE.png"> DCAE<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a ui-sref="dashboard">Training VNF Data</a>
                                </li>
                                <li>
                                    <a ui-sref="importVNFdata">Load VNF Data</a>
                                </li>
                                <li>
                                    <a ui-sref="summary">Action Summary</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
            <div ui-view></div>
        </div> 
        <!-- footer code -->
	        <footer class="footer">
		      <div class="container">
		        <span>&copy; Tech Mahindra - 2017</span>
		      </div>
		    </footer> 
	    <!-- footer code -->  
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/vendor/metisMenu/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/sb-admin-2.js"></script>
€€
</body>

</html>
