<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<meta charset="ISO-8859-1">
<title>Company Scores!</title>

<%@ include file="partials/header.jsp"%>

</head>
<body>

	<h1 class="Jumborton">Company Scores:</h1>

	<section class="lead">
		<table class="text-muted">
			<thead>
				<tr>
					<th>Company</th>
					<th>Score</th>
				</tr>
			</thead>

			<tbody>
				<!-- 
		<c:forEach var="" items="${}">
			<tr class="table-primary">
				<td>${}</td>
				<td>${}</td>
			</tr>
		</c:forEach>
-->
			</tbody>

		</table>

	</section>
	<!-- if we want to make a progress bar to a goal stretch 
	<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
</div>
-->

</body>
</html>