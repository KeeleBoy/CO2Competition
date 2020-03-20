<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
<main class="container">

<section class="jumbotron">

<table class="table table-striped">
<thead>
  <tr>
    <th>Company Name</th>
    <th>City</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="co" items="${company}">
  <tr>
    <td><a href="/details-list/${co.companyId}">${co.name}</a></td>
    <td>${co.city}</td>
  </tr>
  </c:forEach>
  </tbody>
</table>


</section>

</main>
</body>
</html>