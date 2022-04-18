<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ready to indulge?</title>
</head>
<body style = background-color:#e0edc5;>
<%@ include file="../bootstrap.jsp" %>

<h2>You selected: </h2>
<h4>${coffee.name}: $${coffee.cost}</h4>


<div><form action="update.do" method = "GET">
<button style=background-color:#ddb892 type="submit" name= "id" value = "${coffee.id}"> Update Coffee</button>
</form> </div>
<div><form action="deleteCoffee.do" method = "POST">
<button style=background-color:#ddb892 type="submit" name= "id" value = "${coffee.id}"> Delete Coffee</button>
</form> </div>

</body>
</html>