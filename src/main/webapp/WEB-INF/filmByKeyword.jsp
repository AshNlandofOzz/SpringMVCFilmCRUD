<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>

	<h1>Film Details</h1>



	<c:forEach var="film" items="${listOfFilms}">
      <c:choose>
			<c:when test="${listOfFilms != 0}">
				<ul>
				<li> <strong> Id: </strong>${film.id } </li>
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
					<li>${film.category }</li>
				</ul>
				
				
				
			</c:when>
			<c:otherwise>
				<p>No film found by Keyword</p>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<form action = "findFilmInfo.do" method = "GET">
	<input type = "number" name = "filmId" >
	<input type = "submit" value = "Update Film Data"  />
	</form>
	
	
	
	<form action = "deleteFilm.do" method = "POST"> 
	<input name = "filmId" type = "number" />
	<input type = "submit" value = "delete" /> 
	 </form>
				


</body>
</html>