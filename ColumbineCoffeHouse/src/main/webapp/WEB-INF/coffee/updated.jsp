<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saving your updates!</title>
</head>
<body>
<h2>Your updated coffee creation: </h2>
<h4>Name: ${coffee.name}, Size: ${coffee.size}, Steamy or Icey: ${coffee.hotOrIced }, Flavor: ${coffee.flavor }, Milk Choice: ${coffee.milkOption} </h4>
<div><form action="home.do" method = "POST">
<input class = "btn btn-primary" type= "submit" value = "Home"> </form></div>
</body>
</html>