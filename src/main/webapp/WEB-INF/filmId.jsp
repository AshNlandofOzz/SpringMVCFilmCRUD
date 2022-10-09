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

	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.id }</li>
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
	<c:if test="${not empty film.id }">
	<form action = "updateFilm.do" method = "POST">
		<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
		Title: <input type="text" name="title" value = "${film.title }"  /><br>
		Description: <input type="text" name="description" value = "${film.description }" /><br>
		Release Year: <input type="text" name="releaseYear" value = "${film.releaseYear }"/> <br>
		Language Id: <input type="text" name="languageId" value = "${film.languageId }"/><br>
		Rental Duration: <input type="text" name="rentalDuration" value = "${film.rentalDuration }"/> <br>
		Rental Rate: <input type="text" name="rentalRate" value = "${film.rentalRate }"/> <br>
		Length: <input type="text" name="length" value = "${film.length}" /> <br>
		Replacement Cost: <input type="text" name="replacementCost" value = "${film.replacementCost}" /> <br>
		Rating: <input type="text" name="rating" value = "${film.rating}" /> <br>
		Special Features: <input type="text" name="specialFeatures" value ="${film.specialFeatures}"  /> <br>
		<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	<input name = "submit" value = "update" type = "submit"/> 
	</form> 
	
	
	
	<!-- <a href="updateFilm.html"> Update Film </a> -->
	</c:if>
	<br>
	
	<c:if test="${film.id <1000}">
		<p>Cannot delete this film</p>
	</c:if>
	<c:if test="${film.id > 1000}">

		
	<form action = "deleteFilm.do" method = "POST"> 
	<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	<input name = "submit" value = "delete" type = "submit"/> 
	 </form>
	</c:if>
<%-- 		</form>
	<form action = "updateFilm.do" method = "POST"> 
	<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	<input name = "submit" value = "update" type = "submit"/> 
	</form> --%>

</body>
</html>