<nav role="navigation" class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="#" class="navbar-brand">iLibellus</a>
    </div>
    <!-- Collection of nav links and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
            <li><a href="/Library/profile"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Messages</a></li>
            <li><a href="#">Notifications  <span class="badge">5</span></a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <sec:ifLoggedIn>
				<li>
				<g:link controller="logout" tabindex="-1">Sign out</g:link>
                	<!--  <form name="logout" method="POST" action="${createLink(controller:'logout') }"> 
                		<input type="submit" value="logout">
                	</form>-->
				</li>
			</sec:ifLoggedIn>
        </ul>
    </div>
</nav>