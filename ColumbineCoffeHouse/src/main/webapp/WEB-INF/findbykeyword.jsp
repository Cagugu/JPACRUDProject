<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Search</title>
</head>
<body>
<%@ include file="bootstrap.jsp" %>
<c:choose>
<c:when test="${! empty keywordMatch}">
<h2>These are the menu items that match your search:</h2>
	<table>
		<thead>
			<tr>
				<th>Menu Item:</th>
				<th>Name:</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${keywordMatch}">
				<tr>
					<td>${c.id}</td>
					<td>${c.name}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:when>
<c:otherwise>
<h2>Did not find a match. Please try again!</h2>

<form action= "home.do" method = "POST" >
<input type="submit" value= "Go Home">
</form>
</c:otherwise>
</c:choose>



</body>
</html>