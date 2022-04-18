<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted</title>
</head>
<body>
<%@ include file="../bootstrap.jsp" %>
<c:choose>
<c:when test="${isDeleted = true}">
<h2>Menu item removed. </h2>

</c:when>
<c:otherwise> Unable to delete selected menu item. Please select a menu item with an id over 21.</c:otherwise>
</c:choose>
<div><form action="home.do" method = "POST">
<input class = "btn btn-primary" type= "submit" value = "Home"> </form></div>
</body>
</html>