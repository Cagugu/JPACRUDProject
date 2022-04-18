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

.table {
border-collapse: collapse;
margin: 25px 0;
font-size: 0.9em;
min-width: 400px;

}
.table thead tr{
background-color: #ddb892;
color: #472d30;
font-size: 
}
.body {
background-color: #e0edc5;
}
.col img {
  margin-top: 22px;
 margin-left: 5px;
}
.row2 {
  display: flex;
  flex-wrap: wrap;
  padding: 0 4px;
}
</style>
<body class= "body">

	<h1>Columbine Coffee House</h1>

<%@ include file="bootstrap.jsp" %>

	<div class ="container">
	<div class = "row">
	<div class = "col">
	<table class ="table .table-striped">
		<thead>
			<tr>
				<th>Menu Item:</th>
				<th>Name:</th>
				<th>Size In Ounces:</th>
				<th>Cost:</th>
			</tr>
		</thead>
		<tbody style = background-color:#f6e7cb>
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
<div class = "col">
<div class = "row1">
<img class = "col img"alt="coffee1" src="https://scontent.fmem1-1.fna.fbcdn.net/v/t39.30808-6/277519307_272455038410523_1380294195321591143_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=0bheS9QmLyMAX8q2nO6&_nc_ht=scontent.fmem1-1.fna&oh=00_AT_1LnENgTZ12bY7VYsxKlOqyXc0eP4SHfmw6t7mJNQmyg&oe=626174B1">
</div>
<div class = "row2">
<img class = "col img"alt="lox" src="https://scontent.fmem1-1.fna.fbcdn.net/v/t39.30808-6/241638308_141980761457952_4054974831924925547_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=JGMvKsMiGfgAX9qk339&_nc_ht=scontent.fmem1-1.fna&oh=00_AT--QRRz2xLrc6OaeSMhTdx-E00wNStlKNdLZrUJ0jDDow&oe=62621E85">
</div>
<div class = "row3">
<img class = "col img"alt="tira" src="https://scontent.fmem1-2.fna.fbcdn.net/v/t39.30808-6/275623294_260101019645925_599592334195110536_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=ja34X5I7dYIAX_2wByt&_nc_ht=scontent.fmem1-2.fna&oh=00_AT9tUmCeODmhfov5u0V1L_ZrJrqSgE1Q_uNc3sGgPgWJ0A&oe=6261814E">
</div>
</div>
<div class = "col">
<div class ="row1">
<img class = "col img"alt="smoode" src="https://scontent.fmem1-1.fna.fbcdn.net/v/t39.30808-6/241998893_143036498019045_4798284341771241946_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=-IzrTYdFrgcAX_QAwoT&tn=G8SHArsDNnEHlELv&_nc_ht=scontent.fmem1-1.fna&oh=00_AT8dS8bjGyhZbD408vt9EAyoSf3yXe9HW4vdxURs9QQl7Q&oe=6260EC10">
</div>
<div class = "row2">
<img class = "col img"alt="yum" src="https://scontent.fmem1-1.fna.fbcdn.net/v/t39.30808-6/241281736_137533611902667_7224665804143074844_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=tadIiSxfoNsAX8U1EKP&tn=G8SHArsDNnEHlELv&_nc_ht=scontent.fmem1-1.fna&oh=00_AT_g2K0S7ZrUblZUnYPRButfxVVbtNzt4rdn8shjbPwwCw&oe=6261AB32">
</div>
<div class = "row3">
<img class = "col img"alt="tira" src="https://scontent.fmem1-1.fna.fbcdn.net/v/t39.30808-6/278231206_278254034497290_7229735947617523377_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=6opqRXr9PLEAX_EUIMB&_nc_ht=scontent.fmem1-1.fna&oh=00_AT-6tiauR0QJlq1U0MVR-VeVykoKkG_tXztgcs35Q_yX8w&oe=6261CB43">
</div>
</div>
</div>
</div>



</body>
</html>