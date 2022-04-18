<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saving your updates!</title>
</head>
<body style = background-color:#e0edc5>
<%@ include file="../bootstrap.jsp" %>
<h2>Your updated coffee creation: </h2>
<h4>Name: ${coffee.name}, Size: ${coffee.size}, Steamy or Icey: ${coffee.hotOrIced }, Flavor: ${coffee.flavor }, Milk Choice: ${coffee.milkOption} </h4>

</body>
</html>