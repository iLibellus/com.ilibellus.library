<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><g:layoutTitle default="Grails"/></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<g:layoutHead/>
		<r:layoutResources />
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
</head> 
<body>
<div class="bs-example">
    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
           
           <!-- Trying to add icon to nav-bar -->
            <!-- <a class="navbar-brand" rel="home" href="#" title="Organize your books">
        		<img style="max-width:100px; margin-top: -7px;"
             	src=<{resource(dir:"images", file: "glossy_book_icon.png") }/>
    		</a> -->
    		<!-- Trying to add icon to nav-bar -->
    		<a href="#" class="navbar-brand">iLibellus</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Messages</a></li>
                <li><a href="#">Notifications  <span class="badge">5</span></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            	<sec:ifLoggedIn>
                	<li>
                	<form name="logout" method="POST" action="${createLink(controller:'logout') }"> 
                	<input type="submit" value="logout">
                	</form>
						
					</li>
				</sec:ifLoggedIn>
            </ul>
        </div>
    </nav>
</div>
<g:layoutBody/>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>