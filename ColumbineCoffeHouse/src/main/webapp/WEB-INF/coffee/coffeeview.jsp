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

<div><form action="update.do" method = "GET">
<button type="submit" name= "id" value = "${coffee.id}"> Update Coffee</button>
</form> </div>
<div><form action="deleteCoffee.do" method = "POST">
<button type="submit" name= "id" value = "${coffee.id}"> Delete Coffee</button>
</form> </div>

</body>
</html>