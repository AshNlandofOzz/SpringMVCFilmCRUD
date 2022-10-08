<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>

	<h1>Film Details</h1>

	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.description }</li>
				<li>${film.releaseYear}</li>
				<li>${film.languageId}</li>
				<li>${film.rentalDuration}</li>
				<li>${film.rentalRate}</li>
				<li>${film.replacementCost}</li>
				<li>${film.rating}</li>
				<li>${film.specialFeatures}</li>
				<li>${film.language}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found by Id</p>
		</c:otherwise>
	</c:choose>

</body>
</html>