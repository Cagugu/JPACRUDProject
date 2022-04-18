<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make Your Own Coffee Creation</title>
</head>

<body style = background-color:#e0edc5>
<%@ include file="bootstrap.jsp" %>

<h2>Plenty of options to make the perfect cup!</h2>
	<h4>Please make your selections:</h4>

	<form action="createcoffee.do" method="POST">

		<Label>Name your creation:</Label> <input type="text" name="name" /><br>

		<label for="size">Select a size:</label> <br> 
		<input type="radio" name="size" id="small" value= "Small"/>
		 <label for="small">Small</label> 
		 
		 <input	type="radio" name="size" id="medium" value= "Medium"/> 
			<label for="medium">Medium</label>

		<input type="radio" name="size" id="large" value= "Large"/>
		 <label for="large">Large</label><br>


		<label>Hot or Iced?</label>
		 <input type="radio" name="hotOrIced" id="hot"
			value="Hot" /> 
			<label for="hot">Hot</label> 
			<input type="radio" name="hotOrIced" id="iced" value="Iced" /> 
			<label for="iced">Iced</label>
			
			
		<br> <label for="flavor">Pick your flavor:</label> 
		<select name= "flavor">
			<option  value="Caramel">Caramel</option>
			<option value="Vanilla">Vanilla</option>
			<option value="White Chocolate">White Chocolate</option>
			<option  value="Honey">Honey</option>
			<option  value="Lavender">Lavender</option>
			<option  value="Plain">No Flavor</option>
		</select><br> 
		
		<label for="milk">Pick your milk:</label> 
		<select name = "milkOption">
			<option value="Oat">Oat</option>
			<option value="Almond">Almond</option>
			<option value="Soy">Soy</option>
			<option value="Lactaid">Lactaid</option>
			<option value="Fat free">Fat-Free</option>
			<option value="Whole">Whole</option>
		</select><br> <input type="submit" value="Submit">
		
		
	</form>
</body>
</html>