<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Deleted</title>
</head>
<body>

 <c:if test = "${film  !empty}">
 	<p> film could not be deleted </p>
 </c:if>
 <c:if test = "${film  empty}">
 	<p> Film deleted </p>
 </c:if>
</body>
</html>