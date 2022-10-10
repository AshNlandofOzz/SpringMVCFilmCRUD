<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Film Details</h1>

	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.id}</li>
				<li>${film.title}</li>
				<li>${film.description }</li>
				<li>${film.releaseYear}</li>
				<li>${film.languageId}</li>
				<li>${film.rentalDuration}</li>
				<li>${film.rentalRate}</li>
				<li>${film.replacementCost}</li>
				<li>${film.rating}</li>
				<li>${film.specialFeatures}</li>
				
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found by Id</p>
		</c:otherwise>
	</c:choose>
	
	<form action = "deleteFilm.do" method = "POST"> 
		<input name = "filmId" value = "${film.id }" type = "number" hidden = "true"/> 
		<input name = "submit" value = "delete" type = "submit"/> 
	</form>
		<form action = "updateFilm.do" method = "POST">
		<a href = "index.html"> Return to Main Menu </a>
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
	<a href = "index.html"> Return to Main Menu </a>

</body>
</html>