<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ready to indulge?</title>
</head>
<body>
<h2>You selected: </h2>
<h4>${coffee.name}: $${coffee.cost}</h4>
<div><form action="home.do" method = "POST">
<input class = "btn btn-primary" type= "submit" value = "Home"> </form></div>

</body>
</html>