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
			<c:when test="${! empty listOfFilms }">
				<ul>
					
				<li> <strong> Id: </strong>${film.id } </li>
				<li> <strong> Title: </strong> ${film.title}</li>
				<li> <strong> Description: </strong> ${film.description }</li>
				<li> <strong> Release Year: </strong> ${film.releaseYear}</li>
				<li> <strong> Language Id: </strong> ${film.languageId}</li>
				<li> <strong> Rental Duration: </strong> ${film.rentalDuration}</li>
				<li> <strong> Rental Rate: </strong> ${film.rentalRate}</li>
				<li> <strong> Length: </strong> ${film.replacementCost}</li>
				<li> <strong> Replacement Cost: </strong> ${film.rating}</li>
				<li> <strong> Rating: </strong> ${film.specialFeatures}</li>
				<li> <strong> Special Features: </strong> ${film.language}</li>
				<li> <strong> Category: </strong> ${film.category }</li>
				<li> <Strong> Actors:</Strong> ${film.actors }</li>
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
	 <form action="index.html">
    	<input type="submit" value="Main Menu" />
	</form>
				


</body>
</html>