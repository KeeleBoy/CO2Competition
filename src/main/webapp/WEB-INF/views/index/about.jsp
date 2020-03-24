<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<%@ include file="../partials/header.jsp"%>

</head>
<body>
	<main class="container">

		<section class="jumbotron">

			<h2>About Application</h2>
			<p align="justify">Whether cutting your carbon footprint or simply saving on gas,
				carpooling is a practice that more and more companies are trying to
				encourage in their employees. It is simple, its efficient, and it
				does not cost your company a cent.So how do we encourage employees to
				start pooling their resources? By making it simple, easy, and fun.
				The Green on the Go app accomplishes this through an easy-to-use
				interface that allows you the employee to both find potential
				carpools and keep track of how much carbon you have saved by doing
				so.Drawing from the Google Maps API, the app gives you the
				opportunity to find out who among your fellow employees lives in
				your area and might like to carpool. Once you make the request for a
				specific date and time, the carpool is logged into the attached SQL
				database. The app then calculates the amount of carbon that you will
				be saving that trip according to distance travelled and the kind of
				car you drive, and the resulting tally of saved emissions goes into
				the score of everyone in that carpool.Once you start carpooling,
				your progress goes up on the company board, and then the race is on
				to see who can rack up the highest score per week or per month or
				all time. The more you carpool, the more you will be encouraged to
				carpool, and the more you will save in both gas and emissions.And
				not only does the app track emissions by employee, but also tracks
				how much the company as a whole is saving by aggregating the
				employee scores. The results are displayed on the score board of
				participating companies, allowing employers to compete for the
				ability to saythat their employees have cut their emissions more
				than any of their rivals.Simple, easy, and fun means bigger gains
				for your company and cleaner air for everyone.</p>
				
		</section>
	<section class="jumbotron">
	<h2>Application Creators</h2>
	
	<a href="https://www.linkedin.com/in/david-breitenbeck-nc"><h6>David Breitenbeck</h6></a>
	<a href="https://linkedin.com/in/kyle-warchuck"><h6>Kyle Warchuck</h6></a>
	<a href="https://www.linkedin.com/in/rana-siroosian"><h6>Rana Siroosian</h6></a>
	<a href="https://github.com/Rana-Siroosian?tab=repositories"><i class="fa fa-github"></i></a> 
	<a href="https://www.linkedin.com/in/samkeim"><h6>Sam Keim</h6></a>
	</section>

	</main>
</body>
</html>