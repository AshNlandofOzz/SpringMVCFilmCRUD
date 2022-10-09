<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
	
<h1>Film Details</h1>

	<c:choose>
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
	<input name = "submit" value = "Update Film Data" type = "submit"/> 
	</form>
	</c:choose>
	
</body>
</html>