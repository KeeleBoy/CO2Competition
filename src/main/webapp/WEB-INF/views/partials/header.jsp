<!--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<<<<<<< HEAD
<<<<<<< HEAD
  <a class="navbar-brand">Go Green</a>
    <small class="text-muted">A CO2 Savings Competition</small>

=======
<div id="nav-text">
  <div><a class="navbar-brand mb-0 h1 my-0" href="/">Green on the Go</a></div>
      <div><small class="text-white">A CO2 Savings Competition</small></div>
</div>
>>>>>>> Remodel/HttpSession
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/">Home</a>
      </li>
	<!-- navbar buttons showing only if logged in -->
      <c:if test="${employee ne null}">
	      <li class="nav-item">
	        <a class="nav-link" href="/employee">Dashboard</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/routes">Available Routes</a>
	      </li>
	      <li class="nav-item">
<<<<<<< HEAD
	        <a class="nav-link" href="/previous-routes/${emId}">Previous Routes</a>
=======
	<a class="navbar-brand" href="#">CO2 Savings</a>
	<a class="navbar-brand" href="login">Login</a>
	<a class="navbar-brand" href="register">Register New User</a>
	
</nav>-->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div id="nav-text">
  <div><a class="navbar-brand mb-0 h1 my-0" href="/">Green on the Go</a></div>
      <div><small class="text-white">A CO2 Savings Competition</small></div>
</div>
</nav>
<nav class="navbar navbar-expand-lg navbar-white bg-white">

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
        <a class="navbar-text text-blue" href="/">Home</a>
        
        
      
	<!-- navbar buttons showing only if logged in -->
      <c:if test="${employee ne null}">
	      <li class="nav-item">
	        <a class="nav-link" href="/employee">Dashboard</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/routes">Available Routes</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/previous-routes">Previous Routes</a>
>>>>>>> 49aeebd0b6f3210d997adb7f3d75aed9771e64d2
=======
	        <a class="nav-link" href="/previous-routes">Previous Routes</a>
>>>>>>> Remodel/HttpSession
	      </li>
	<!--  <li class="nav-item">
	        <a class="nav-link" href="/favorite-routes">Favorite Routes</a>
	      </li>
	 -->
	      <li class="nav-item">
	        <a class="nav-link" href="/summary">Leaderboard</a>
	      </li>
		</c:if>
	  </ul>
  	<c:if test="${employee ne null}">
<<<<<<< HEAD
<<<<<<< HEAD
		<div class="nav-item active navbar-nav"><a class="nav-link">Welcome ${employee.name}! </a>
		<span class="btn btn-link text-secondary"><a href="/logout"><i>Logout</i></a></span>	
=======
		<div id="nav-text">
		  <div class="text-right" class="my-0"><a class="navbar-text text-blue">Welcome ${employee.name}!</a></div>
		      <div class="text-right"><a class="navbar-text text-blue" href="/logout">Logout</a></div>
>>>>>>> 49aeebd0b6f3210d997adb7f3d75aed9771e64d2
=======
		<div id="nav-text">
		  <div class="text-right" class="my-0"><a class="navbar-text text-white">Welcome ${employee.name}!</a></div>
		      <div class="text-right"><a class="navbar-text text-white" href="/logout">Logout</a></div>
>>>>>>> Remodel/HttpSession
		</div>
	</c:if>
	<c:if test="${employee eq null}">
		<!-- Right side, login button // user name and score and logout button -->
<<<<<<< HEAD
<<<<<<< HEAD
		<a class="navbar-brand" href="/login">Login</a>
=======
		<a class="navbar-text text-white" href="/login">Login</a>
>>>>>>> Remodel/HttpSession
	</c:if>  
  </div>
</nav>

=======
			<a class="navbar-text text-blue" href="/register">Register New User</a>
		
	</c:if>
  </div>
</nav>
>>>>>>> 49aeebd0b6f3210d997adb7f3d75aed9771e64d2
