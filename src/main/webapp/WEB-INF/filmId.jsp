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
			<c:if test = "${film.id <=1000 }">
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
			</c:if>
			<c:if test = "${film.id>1000 }">
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
			</ul>
			</c:if>
		</c:when> 

		<c:otherwise>
			<p>No film found by Id</p>
		</c:otherwise>
	</c:choose>
	
		<c:if test="${film.id <1000}">
		<p>Cannot delete this film</p>
	</c:if>
	<c:if test="${film.id > 1000}">

		
	<form action = "deleteFilm.do" method = "POST"> 
	<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	<input name = "submit" value = "Delete" type = "submit"/> 
	 </form>
	</c:if>
	<%-- <c:if test="${film.id !=null }"> --%>
	<form action = "updateFilm.do" method = "POST">
	<input name = "submit" value = "Update Film Data" type = "submit"/> 
		<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
		<input type="text" name="title" value = "${film.title }" hidden = "true"  /><br>
		<input type="text" name="description" value = "${film.description }" hidden = "true" /><br>
		<input type="text" name="releaseYear" value = "${film.releaseYear }" hidden = "true"/> <br>
		<input type="text" name="languageId" value = "${film.languageId }" hidden = "true"/><br>
		<input type="text" name="rentalDuration" value = "${film.rentalDuration }" hidden = "true"/> <br>
		<input type="text" name="rentalRate" value = "${film.rentalRate }" hidden = "true"/> <br>
		<input type="text" name="length" value = "${film.length}" hidden = "true"/> <br>
		<input type="text" name="replacementCost" value = "${film.replacementCost}" hidden = "true"/> <br>
		<input type="text" name="rating" value = "${film.rating}" hidden = "true"/> <br>
		<input type="text" name="specialFeatures" value ="${film.specialFeatures}" hidden = "true" /> <br>
		<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	
	</form> 
	<form action="index.html">
    	<input type="submit" value="Main Menu" />
	</form>
	
	
	
	<!-- <a href="updateFilm.html"> Update Film </a> -->
	<%-- </c:if> --%>
	<br>
	

<%-- 		</form>
	<form action = "updateFilm.do" method = "POST"> 
	<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
	<input name = "submit" value = "update" type = "submit"/> 
	</form> --%>

</body>
</html>