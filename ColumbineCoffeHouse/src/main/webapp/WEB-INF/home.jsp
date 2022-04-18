<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Columbine Coffee House</title>
</head>
<style>
.button {
	background-color: #ddb892;
	color: #472d30;
	padding: 5px 10px;
	text-align: center;
	font-size: 16px;
}
.menu-table {
border-collapse: collapse;
margin: 25px 0;
font-size: 0.9em;
min-width: 600px;

}
.menu-table thead tr{
background-color: #ddb892;
color: #472d30;
}

</style>
<body>

	<h1>Columbine Coffee House</h1>

<%@ include file="bootstrap.jsp" %>

	<div>
	<table class = "menu-table">
		<thead>
			<tr>
				<th>Menu Item:</th>
				<th>Name:</th>
				<th>Size In Ounces:</th>
				<th>Cost:</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${fullMenu}">
				<tr>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td>${c.sizeInOunces}</td>
					<td>${c.cost}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>

</body>
</html>