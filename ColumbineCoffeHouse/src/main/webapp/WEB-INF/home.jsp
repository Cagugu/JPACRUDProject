<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Columbine Coffee House</title>
</head>
<body>

	<h1>Columbine Coffee House</h1>

	<h3>Search by menu item number:</h3>
	<form action="getCoffee.do" method="GET">
		<input type="text" name=id /> <input type="submit" name="Show Item" />
	</form>



	<table>
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


</body>
</html>